<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" >
<head>
    <meta charset="UTF-8">
    <title>Websocket Tutorial</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="../resources/assets/css/chatting/style.css">
    <style>


    </style>
</head>
<body>
<div class="floating-chat expand enter">
    <i class="fa fa-comments" aria-hidden="true"></i>
    <div class="chat">
        <div class="header">
            <span class="title">
                <span style="cursor: pointer;"><</span> &nbsp;
                이름
            </span>
        </div>
        <div class="text-center" style="margin: 0 auto;">
            <p style="background-color: #a9a8a8;border-radius: 10px;padding: 0px 5px;">채팅방에 입장하였습니다.</p>
        </div>
        <ul id="msgArea" class="messages">
        </ul>
        <div class="footer">
            <div id="opinion" class="text-box" contenteditable="true" disabled="true" onkeyup="enterkey()"></div>
        </div>
    </div>
</div>
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script  src="../resources/assets/js/chatting/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

</body>
<script>

    const username = "${name}";

    const websocket = new WebSocket("ws://localhost:8888/ws/chat");
    websocket.onmessage = onMessage;
    websocket.onopen = onOpen;
    websocket.onclose = onClose;

    let isSeeing = true;
    document.addEventListener("visibilitychange", function() {
        console.log(document.visibilityState);
        if(document.visibilityState == "hidden"){
            isSeeing = false;
        }else{
            isSeeing = true;
        }
    });

    var newExcitingAlerts = (function () {
        var oldTitle = document.title;
        var msg = "★Message!★";
        var timeoutId;
        var blink = function() { document.title = document.title == msg ? ' ' : msg;
            if(isSeeing == true){
                clear();
            }
        };
        var clear = function() {
            clearInterval(timeoutId);
            document.title = oldTitle;
            window.onmousemove = null;
            timeoutId = null;
        };
        return function () {
            if (!timeoutId) {
                timeoutId = setInterval(blink, 1000);
            }
        };
    }());

    setInterval(() => console.log(new Date()), 10000); //prevent chrome refresh

    $(document).ready(function(){
        $(".floating-chat").click();

        $("#disconn").on("click", (e) => {
            disconnect();
        })

        $("#button-send").on("click", (e) => {
            send();
        });
    })

    function enterkey(){
        if (window.event.keyCode == 13) {
            send();
        }
    }
    function send(){
        console.log(username + ":" + $("#opinion").text());
        if($("#opinion").text() != ""){
            websocket.send(username + ":" + $("#opinion").text());
            $("#opinion").text('');
        }
    }

    function onClose(evt) {
        var str = username + ": 님이 방을 나가셨습니다.";
        websocket.send(str);
    }

    function onOpen(evt) {
        var str = username + ": 님이 입장하셨습니다.";
        websocket.send(str);
    }

    function onMessage(msg) {
        var data = msg.data;
        var sessionId = null;
        var message = null;
        var arr = data.split(":");

        for(var i=0; i<arr.length; i++){
            console.log('arr[' + i + ']: ' + arr[i]);
        }

        var cur_session = username;

        console.log("cur_session : " + cur_session);


        sessionId = arr[0];
        message = arr[1];

        console.log("sessionID : " + sessionId);
        console.log("cur_session : " + cur_session);


        if(message == " 님이 입장하셨습니다."){
            message = sessionId + "님이 입장하셨습니다.";
        }
        if(message == undefined){
            message = "채팅이 종료되었습니다.";
        }
        if(sessionId == cur_session){
            var str = "<li class='other'>";
            str += message;
            str += "</li>";
            $("#msgArea").append(str);
        }
        else{
            var str = "<li class='self'>";
            str += message;
            str += "</li>";
            $("#msgArea").append(str);

            if(isSeeing == false){
                newExcitingAlerts();
            }
        }

        document.getElementById("msgArea").scrollTop = document.getElementById("msgArea").scrollHeight;
    }
</script>
<style>
    .text-box div:nth-child(n+1) {
        display: none;
    }
</style>
</html>