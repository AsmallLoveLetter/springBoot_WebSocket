package com.ricky.websocket;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

/**
 * socket核心配置容器
 */
@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer {

    @Override
    public void configureMessageBroker(MessageBrokerRegistry config) {
        //服务端发送消息给客户端的域,多个用逗号隔开
        config.enableSimpleBroker("/topic");// /users 默认通知
        //定义websoket前缀
        config.setApplicationDestinationPrefixes("/app");
        //设置前缀  默认是user 可以修改  点对点时使用
        config.setUserDestinationPrefix("/ricky/");
    }

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
             //注册一个Stomp的节点（endpoint）,并指定使用SockJS协议
            registry.addEndpoint("/ricky-websocket").withSockJS();
    }


    @Bean
    public SocketSessionRegistry SocketSessionRegistry(){
        return new SocketSessionRegistry();
    }
    @Bean
    public STOMPConnectEventListener STOMPConnectEventListener(){
        return new STOMPConnectEventListener();
    }
}