<!DOCTYPE html>
<#import "spring.ftl" as spring />
<html>
<head>
    <title>Bootstrap 模板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css>
    <![endif]-->
    <link rel="stylesheet" href="/static/css/jBox.css">
    <link rel="stylesheet" href="/static/css/jBox.Notice.css">
    <link rel="stylesheet" href="/static/css/NoticeFancy.css">
    <link rel="stylesheet" href="/static/css/Demo.css">

    <#--socket相关-->
    <script src="/static/js/jquery.min.js"></script>
    <script src="/static/js/sockjs.min.js"></script>
    <script src="/static/js/stomp.js"></script>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<style>
    .form-group {
        padding-right: 20px;
        padding-bottom: 10px;
    }

    .wordText {
        position: relative;
        height: auto !important;
        height: 400px;
        min-height: 400px;
        background-color: #708090;
        margin: 2px;
        border-radius: 5px;
        cursor: pointer;
        margin-left: 300px;

        color: white;
        width: 70%;
    }


    .wordTextModel {
        position: relative;
        height: auto !important;
        height: 400px;
        min-height: 400px;
        background-color: #708090;
        margin: 2px;
        border-radius: 5px;
        cursor: pointer;

        color: white;
        width: 100%;
    }

    .message{
        width:20px;
        height:20px;
        border-radius:50%;
        font-size:15px;
        color:black;
        line-height: 20px;
        text-align:center;
        background:red;
    }

</style>
</head>
<body onload="detailmessage()">
<#--工单页面模态框-->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">历史工单</h4>
            </div>
            <div class="modal-body">
                <div style="" class="wordTextModel">
                    <div style="margin-top: 20px;margin-bottom: 20px;border-bottom: 1px solid white">
                        <span>姚美吉 创建 工单！</span></br>
                        <span>是否需要跟进: 否</span></br>
                        <span>是否涉及退款: 否</span></br>
                        <span>用户类型: 个人会员</span></br>
                        <span>咨询类型: 业务咨询=>场景服务=>常用设置</span></br>
                        <span>业务描述:</span></br>
                        <span>解决方案：电脑制作页面选择预览和设置-常用设置场景访问状态，不允许访问确定保存退出</span></br>
                        <span>解决结果：接受</span></br>
                        <span> --------------------------------------</span></br>
                        <span>二线XXX：</span></br>
                    </div>
                    <div style="margin-top: 20px;margin-bottom: 20px;border-bottom: 1px solid white">
                        <span>姚美吉 创建 工单！</span></br>
                        <span>是否需要跟进: 否</span></br>
                        <span>是否涉及退款: 否</span></br>
                        <span>用户类型: 个人会员</span></br>
                        <span>咨询类型: 业务咨询=>场景服务=>常用设置</span></br>
                        <span>业务描述:</span></br>
                        <span>解决方案：电脑制作页面选择预览和设置-常用设置场景访问状态，不允许访问确定保存退出</span></br>
                        <span>解决结果：接受</span></br>
                        <span> --------------------------------------</span></br>
                        <span>二线XXX：</span></br>
                    </div>
                    <div style="margin-top: 20px;margin-bottom: 20px;border-bottom: 1px solid white">
                        <span>姚美吉 创建 工单！</span></br>
                        <span>是否需要跟进: 否</span></br>
                        <span>是否涉及退款: 否</span></br>
                        <span>用户类型: 个人会员</span></br>
                        <span>咨询类型: 业务咨询=>场景服务=>常用设置</span></br>
                        <span>业务描述:</span></br>
                        <span>解决方案：电脑制作页面选择预览和设置-常用设置场景访问状态，不允许访问确定保存退出</span></br>
                        <span>解决结果：接受</span></br>
                        <span> --------------------------------------</span></br>
                        <span>二线XXX：</span></br>
                    </div>
                    <div style="margin-top: 20px;margin-bottom: 20px;border-bottom: 1px solid white">
                        <span>姚美吉 创建 工单！</span></br>
                        <span>是否需要跟进: 否</span></br>
                        <span>是否涉及退款: 否</span></br>
                        <span>用户类型: 个人会员</span></br>
                        <span>咨询类型: 业务咨询=>场景服务=>常用设置</span></br>
                        <span>业务描述:</span></br>
                        <span>解决方案：电脑制作页面选择预览和设置-常用设置场景访问状态，不允许访问确定保存退出</span></br>
                        <span>解决结果：接受</span></br>
                        <span> --------------------------------------</span></br>
                        <span>二线XXX：</span></br>
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>


<div class="row" >

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a style="position: relative" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <img src="<@spring.url'/static/img/email.png"'/>" width="60px"/>
                            <div  class="message" style=";position: absolute;bottom: 50px;left: 50px">11</div>
                            <#--<img src="../static/img/email.png">-->

                            <#--<img src="${request.contextPath }/imge/email.png" width="300px"/>-->
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">工单fafaf12314已被通过</a></li>
                            <li><a href="#">你有新的工单</a></li>
                            <li><a href="#">工单已被处理</a></li>
                            <li role="separator" class="divider"></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <h1 align="center">工单系统一</h1>
</div>
<div class="row">
    <form class="form-inline" id="logscene_search_toolbar">
        <div class="form-group" style="padding-left: 300px">
            <div class="input-group">
                <div class="input-group-addon">受理坐席</div>
                <input type="text" class="form-control" name="sceneId" onblur="checkNumber(this)" id="sceneId"/>
            </div>
        </div>

        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">工单号</div>
                <input type="text" class="form-control" name="code"/>
            </div>

        </div>


        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">开始时间</div>
                <input type="text" class="input-sm form-control" name="checkStartTime" id="logscene-start-date" value=""/>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">结束时间</div>
                <input type="text" class="input-sm form-control" name="checkStartTime" id="logscene-start-date" value=""/>
            </div>
            <button type="button" class="btn btn-primary" >查询</button>
        </div>





    </form>
    <form class="form-inline" id="logscene_search_toolbar">
        <div class="form-group" style="padding-left: 300px">
            <div class="input-group">
                <div class="input-group-addon">手机号</div>
                <input type="text" class="form-control" name="sceneId"  id="sceneId"/>
            </div>
        </div>

        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">易企秀账号</div>
                <input type="text" class="form-control" name="code"/>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">座机号码</div>
                <input type="text" class="form-control" name="createUser"/>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">用户邮箱</div>
                <input type="text" class="form-control" name="createUser"/>
            </div>
        </div>



        <div class="form-group" style="padding-left: 300px">
            <div class="input-group">
                <div class="input-group-addon">咨询类型</div>
                <input type="text" class="form-control" name="createUser"/>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">咨询内容</div>
                <input type="text" class="form-control" name="createUser"/>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">三级菜单</div>
                <select class="form-control" id="audio_source">
                    <option value="1">一级</option>
                </select>
            </div>
            <button type="button" class="btn btn-info" >确定</button>
        </div>


    </form>

    <span style="padding-left: 300px">工单详情</span>

    <button type="button" style="margin-left: 899px" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        历史工单
    </button>

    <#--<table id="logscene-grid" data-toggle="table" >
        <thead>
        <tr>
            <th data-valign="middle" data-checkbox="true">全选</th>
            <th data-valign="middle" data-field="cover" data-align="center" data-formatter="scene_cover_format">封面图</th>
            <th data-valign="middle" data-field="sceneId" data-align="center">场景ID</th>
            <th data-valign="middle" data-field="code" data-align="center">场景CODE</th>
            <th data-valign="middle" data-field="name" data-formatter="scene_name_format">场景名称</th>
            <th data-valign="middle" data-field="createUser" data-visible="false">创建人</th>
            <th data-valign="middle" data-field="description" data-visible="false">描述</th>

            <th data-valign="middle" data-field="pv">活跃PV</th>
            <th data-valign="middle" data-field="totalPv" data-visible="false">总PV</th>
            <th data-valign="middle" data-field="reportNum" data-align="center" data-sortable="true">举报次数</th>

            <th data-valign="middle" data-field="logType" data-formatter="format_log_type">类型</th>
            <th data-valign="middle" data-field="bizType" data-formatter="format_biz_type">平台</th>
        &lt;#&ndash;        <th data-valign="middle" data-field="memberType" data-formatter="member_type_format">会员类型</th>&ndash;&gt;

            <th data-valign="middle" data-field="words" data-visible="false">词语</th>
            <th data-valign="middle" data-field="links" data-visible="false" data-formatter="format_links">外链</th>

            <th data-valign="middle" data-field="isPass" data-align="center" data-formatter="format_log_ispass">状态</th>
            <th data-valign="middle" data-field="checkUser" data-align="center" >审核人</th>
            <th data-valign="middle" data-field="joinTime" data-align="center" data-formatter="scene_date_format" data-sortable="true">入列时间</th>
            <th data-valign="middle" data-field="checkTime" data-align="center" data-formatter="scene_date_format" data-sortable="true">审核时间</th>
            <th data-valign="middle" data-field="remark" data-visible="false">评语</th>
            <th data-valign="middle" data-field="sceneId" data-align="center" data-formatter="scene_logoperation_format" class="action-buttons">操作</th>
            <th data-valign="middle" data-field="id" data-align="center" data-visible="false" data-formatter="copy_logoperation_format" class="action-buttons">副本操作</th>
        </tr>
        </thead>
    </table>-->


    <div style="" class="wordText">
        <span>姚美吉 创建 工单！</span></br>
        <span>是否需要跟进: 否</span></br>
        <span>是否涉及退款: 否</span></br>
        <span>用户类型: 个人会员</span></br>
        <span>咨询类型: 业务咨询=>场景服务=>常用设置</span></br>
        <span>业务描述:</span></br>
        <span>解决方案：电脑制作页面选择预览和设置-常用设置场景访问状态，不允许访问确定保存退出</span></br>
        <span>解决结果：接受</span></br>
        <span> --------------------------------------</span></br>
        <span>二线XXX：</span></br>
    </div>


    <span style="padding-left: 300px">新增内容</span>
    <textarea style="" class="wordText">
姚美吉 创建 工单！
是否需要跟进: 否
是否涉及退款: 否
用户类型: 个人会员
咨询类型: 业务咨询=>场景服务=>常用设置
业务描述:
客户问题：如何关闭场景
解决方案：电脑制作页面选择预览和设置-常用设置场景访问状态，不允许访问确定保存退出
解决结果：接受

    </textarea>


    <form class="form-inline" id="logscene_search_toolbar" style="margin-left: 300px">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">是否完结</div>
                <select class="form-control" id="audio_source">
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon">受理部门</div>
                <select class="form-control" id="audio_source">
                    <option value="1">技术部</option>
                    <option value="2">客服部</option>
                </select>

            </div>
            <div class="input-group">
                <div class="input-group-addon">受理人</div>
                <select class="form-control" id="audio_source">
                    <option value="1">罗强</option>
                    <option value="2">周骄</option>
                </select>

            </div>

        </div>

        <input type="hidden" id="message">
        <button type="button" class="btn btn-success" >确定</button>
    </form>
</div>







<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="//lib.eqh5.com/bootstrap/3.3.7/bootstrap.min.js"></script>

<script src="/static/js/jBox.js"></script>
<script src="/static/js/jBox.Notice.js"></script>
<script src="/static/js/Demo.js"></script>

<script>

    var colors = ['red', 'green', 'blue', 'yellow'], index = 0;
    var getColor = function () {
        (index >= colors.length) && (index = 0);
        return colors[index++];
    };

    /*socket相关*/
    var stompClient = null;
    //传递用户key值
    var login = "rickyt2";

    function connect() {

        var socket = new SockJS('/ricky-websocket');
        stompClient = Stomp.over(socket);
        stompClient.connect({login:login}, function (frame) {
            console.log('Connected: ' + frame);
            stompClient.subscribe('/ricky/topic/greetings', function (greeting) {
                showGreeting(JSON.parse(greeting.body).content);
            });
        });
    }


    function showGreeting(message) {
        /*$("#greetings").append("<tr><td>" + message + "</td></tr>");
        alert(message);*/
        moticeClick(message);
    }

    function moticeClick(message) {
        var numberStr = $(".message").text() ;
        var number = parseInt(numberStr) +1 ;
        $(".message").text(number);

        new jBox('Notice', {
            theme: 'NoticeFancy',
            attributes: {
                x: 'right',
                y: 'top'
            },

            color: getColor(),
            content: message ,
            audio: '/static/audio/bling2',
            volume: 80,
            animation: {open: 'slide:bottom', close: 'slide:left'}
        });


    }


    function detailmessage() {
        connect();
    }

</script>

</head>
</body>
</html>