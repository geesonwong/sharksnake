<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎来玩贪食蛇哦耶</title>
    <meta name="description" content="天下第一武大会">
    <meta name="author" content="王俊森(jason61719@gmail.com)">

    <!-- TODO 路径绝对化 -->
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="/resources/css/index.css" rel="stylesheet">

</head>
<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">贪食蛇</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li><a href="#about">关于</a></li>
                    <li><a href="#contact">联系</a></li>
                </ul>
                <p class="navbar-text pull-right"><a href="#">我的信息</a></p>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <form class="well form-horizontal" method="post" id="config">
        <input type="hidden" id="count" name="count" value="0">

        <div class="btn-group pull-right">
            <div class="btn" id="config-game" data-toggle="modal" data-target="#config-board">配置游戏</div>
            <div class="btn" id="start-game">开始游戏</div>
        </div>
        <div class="btn-group pull-right">
            <div class="btn" id="add-player">添加玩家</div>
            <div class="btn" id="delete-player">删除玩家</div>
        </div>
        <div id="config-board" class="modal .fade" data-show="false" data-backdrop="false" style="display: none">
            <div class="modal-header">
                <h3>游戏配置</h3>
            </div>
            <div class="modal-body">
                <div class="control-group">
                    <label class="control-label" for="totalRound">回合</label>

                    <div class="controls">
                        <input type="text" class="input-xlarge" name="totalRound" id="totalRound"
                               placeholder="最多轮数，默认是100">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="width">长宽</label>

                    <div class="controls">
                        <input type="text" class="input-medium" id="width" name="width" placeholder="宽度，默认是20">
                        <input type="text" class="input-medium" id="height" name="height" placeholder="高度，默认是20">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" type="button">关闭</button>
            </div>
        </div>
    </form>
    <div>
        <canvas id="canvas">不支持Canvas，请用以下浏览器：IE9+ FF3.6+ Chrome10+</canvas>
    </div>
</div>

<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-alert.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap-modal.js"></script>
<script type="text/javascript" src="/resources/js/template.js"></script>
<script type="text/javascript" src="/resources/js/index.js"></script>
<script type="text/html" id="player">
    <div class="clearfix">
        <div class="btn-group pull-left" data-toggle="buttons-radio">
            <button type="button" class="btn active" name="type" value="http">HTTP</button>
            <button type="button" class="btn" name="type" value="udp">UDP</button>
        </div>
        <input type="text" name="address" class="span4 input-large address" placeholder="输入你的访问地址和端口">
        <button class="btn test" type="button" name="test">测试</button>
    </div>
</script>
<script type="text/html" id="notice">
    <div class="noticeTemplate fade in alert alert-{{=type }}">
        <a class="close" data-dismiss="alert">x</a>
        {{=message }}
    </div>
</script>
</body>
</html>