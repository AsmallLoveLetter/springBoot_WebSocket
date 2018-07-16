package com.ricky.websocket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.MessageHeaders;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessageType;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.util.Assert;

import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

/**
 * Created by baiguantao on 2017/8/4.
 * 用户session记录类
 */
public class SocketSessionRegistry{
    //this map save every session
    //这个集合存储session

    @Autowired
    private SimpMessagingTemplate template;


    private final ConcurrentMap<String, Set<String>> userSessionIds = new ConcurrentHashMap();
    private final Object lock = new Object();

    private final HashMap<String, String> message = new HashMap<>();

    public void putMessageMap(String id,String message){
        this.message.put(id, message);
    }

    public String getMessage(String id) {
        return this.message.get(id);
    }

    public void removeMessage(String id) {
        this.message.remove(id);
    }

    public SocketSessionRegistry() {
    }

    /**
     *
     * 获取sessionId
     * @param user
     * @return
     */
    public Set<String> getSessionIds(String user) {
        Set set = this.userSessionIds.get(user);
        return set != null?set: Collections.emptySet();
    }

    public boolean getSession(String user){
        boolean ischen = userSessionIds.get(user) != null ? true : false;
        return ischen;
    }

    /**
     * 获取所有session
     * @return
     */
    public ConcurrentMap<String, Set<String>> getAllSessionIds() {
        return this.userSessionIds;
    }

    /**
     * register session
     * @param user
     * @param sessionId
     */
    public void registerSessionId(String user, String sessionId) {
        Assert.notNull(user, "User must not be null");
        Assert.notNull(sessionId, "Session ID must not be null");
        Object var3 = this.lock;
        synchronized(this.lock) {



            Set set = this.userSessionIds.get(user);
            if(set == null) {
                set = new CopyOnWriteArraySet();
                set.add(sessionId);
                this.userSessionIds.put(user, (Set<String>) set);
            }else{
                //set.clear();
                set.add(sessionId);
            }

          //  set.add(sessionId);

          if(getMessage(user) != null){
              getSessionIds(user).stream().forEach(session ->{
                  try {
                      template.convertAndSendToUser(session,"/topic/greetings",new OutMessage("single send to："+user+", from:" + getMessage(user) + "!"),createHeaders(session));
                  }catch (Exception x){
                      x.printStackTrace();
                  }

              });
                removeMessage(user);
            }

        }
    }

    public void unregisterSessionId(String userName, String sessionId) {
        Assert.notNull(userName, "User Name must not be null");
        Assert.notNull(sessionId, "Session ID must not be null");
        Object var3 = this.lock;
        synchronized(this.lock) {
            Set set = (Set)this.userSessionIds.get(userName);
            if(set != null && set.remove(sessionId) && set.isEmpty()) {
                this.userSessionIds.remove(userName);
            }

        }
    }


    private MessageHeaders createHeaders(String sessionId) {
        SimpMessageHeaderAccessor headerAccessor = SimpMessageHeaderAccessor.create(SimpMessageType.MESSAGE);
        headerAccessor.setSessionId(sessionId);
        headerAccessor.setLeaveMutable(true);
        return headerAccessor.getMessageHeaders();
    }
}
