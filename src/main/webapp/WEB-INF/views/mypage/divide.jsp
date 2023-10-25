<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>브링브링</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- JQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Favicons -->
    <link href="../resources/assets/img/main/title-icon.png" rel="icon">
    <link href="../resources/assets/img/main/title-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="../resources/assets/css/style.css" rel="stylesheet">
    <link href="../resources/assets/css/common.css" rel="stylesheet">
    <link href="../resources/assets/css/mypage/mypage.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Arsha
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
    
</head>

<body>

  <!-- 헤더 -->
  <jsp:include page="/include/header.jsp"></jsp:include>

    <div style="width: 100%;height: 74px;"></div>
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center" style="width: 100%;margin: 0 auto;">
        <div style="width: 1300px;margin: 0 auto;">
            <div style="float: left;margin-top: 60px;">
                <h1>마이 페이지</h1>
                <div style="width: 100%;height: 30px;"></div>
                <h4 style="color: rgb(189, 245, 229);">내역을 편리하게 확인하고, 나만의 정보를 관리하는 특별한 공간입니다.</h4>
            </div>
            <div style="display: flex;flex-direction: row;justify-content: flex-end;">
                <img src="../resources/assets/img/mypage/mypage_book.png" style="width: 250px;" alt="">
            </div>
        </div>
    
    </section>

    <!-- 메인 -->
    <main>
        <div class="mypage_top m-auto rounded">
            <div class="mypage_top_div ps-5 pb-3 mt-3" style="height:75px;">
                <h1 class="d-inline">${dData.get(i).user.userName}님</h1>
                <div class="d-inline">
                    <a href="#">
                        <img src="../resources/assets/img/mypage/mypage_gear.png" class="h-100 pb-3">
                    </a>
                </div>
            </div>

            <div class="container">
                <div class="row" style="min-height:750px;">
                    <div class="mypage_sidebar col-3 p-5">
                        <a href="/mypage/enroll.do" class="fs-1">신청 내역</a>
                        <a href="/inquire/list.do" class="fs-1">문의 내역</a>
                        <a href="/mypage/divide.do" class="fs-1">나눔 내역</a>
                        <a href="/mypage/chatting.do" class="fs-1">채팅방 목록</a>
                        <a href="/mypage/heart.do" class="fs-1">찜한 게시물</a>
                    </div>
                    <div class="col-9 ps-5 pt-5">
                        
                        <!-- 나눔 내역 -->
                        <div class="container mt-3 p-0">
                            <h1 style="float: left;">나눔글 작성 내역</h1>
                            <table class="table table-hover text-center align-middle table-bordered">
                                <colgroup>
                                    <col width=8%>
                                    <col width=56%>
                                    <col width=11%>
                                    <col width=14%>
                                </colgroup>
                                <thead class="table-light align-middle">
                                    <tr>
                                        <th>번호</th>
                                        <th>제목</th>
                                        <th>나눔 여부</th>
                                        <th>작성일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="divide" items="${dData}" varStatus="i">
                                        <tr>
                                            <td class="text-center">${i.count}</td>
                                            <td class="text-center"><a href="/divide/detail.do?divNo=${divide.divide.divNo}">${divide.divide.divTitle}</a></td>
                                            <td class="text-center">
                                                <c:if test="${divide.divide.divYn.toString() eq 'N'}">
                                                    <button class="btn btn-success">나눔 완료</button>
                                                </c:if>
                                                <c:if test="${divide.divide.divYn.toString() ne 'N'}">
                                                    <button class="btn btn-success">나눔 진행중</button>
                                                </c:if>
                                            </td>
                                            <td class="text-center">
                                                <fmt:parseDate value="${divide.divide.divCreateDate}" pattern="yyyy-MM-dd'T'HH:mm" var="parseDateTime1" type="both" />
                                                <fmt:formatDate value="${parseDateTime1}" pattern="yyyy. MM. dd." />
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- 페이징 -->
                        <div style="width: 100%;margin: 0 auto;margin-top: 60px;">
                            <nav aria-label="Page navigation example" style="display: flex;">
                                <ul class="pagination" style="margin: 0 auto;">
                                    <c:if test="${pInfo.startNavi ne 1}">
                                        <c:url var="bPageUrl" value="/mypage/divide.do">
                                            <c:param name="page" value="${pInfo.startNavi-1}"></c:param>
                                        </c:url>
                                        <li class="page-item">
                                            <a style="color: black;" class="page-link" href="${bPageUrl}">Previous</a>
                                        </li>
                                    </c:if>
                                    <c:forEach begin="${pInfo.startNavi}" end="${pInfo.endNavi}" var="p">
                                        <c:url var="pageUrl" value="/mypage/divide.do">
                                            <c:param name="page" value="${p}"></c:param>
                                        </c:url>
                                        <li class="page-item">
                                            <a style="color: black;" class="page-link" href="${pageUrl}">${p}</a>
                                        </li>
                                    </c:forEach>
                                    <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount}">
                                        <c:url var="nPageUrl" value="/mypage/divide.do">
                                            <c:param name="page" value="${pInfo.endNavi+1}"></c:param>
                                        </c:url>
                                        <li class="page-item">
                                            <a style="color: black;" class="page-link" href="${nPageUrl}">Next</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- End #main -->

  <!-- 푸터 -->
  <jsp:include page="/include/footer.jsp"></jsp:include>

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="../resources/assets/vendor/aos/aos.js"></script>
    <script src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="../resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
    <script src="../resources/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../resources/assets/js/main.js"></script>

    <!-- 채널톡 api -->
    <script>
        (function () { var w = window; if (w.ChannelIO) { return w.console.error("ChannelIO script included twice."); } var ch = function () { ch.c(arguments); }; ch.q = []; ch.c = function (args) { ch.q.push(args); }; w.ChannelIO = ch; function l() { if (w.ChannelIOInitialized) { return; } w.ChannelIOInitialized = true; var s = document.createElement("script"); s.type = "text/javascript"; s.async = true; s.src = "https://cdn.channel.io/plugin/ch-plugin-web.js"; var x = document.getElementsByTagName("script")[0]; if (x.parentNode) { x.parentNode.insertBefore(s, x); } } if (document.readyState === "complete") { l(); } else { w.addEventListener("DOMContentLoaded", l); w.addEventListener("load", l); } })();

        ChannelIO('boot', {
            "pluginKey": "3e438b51-7087-4b0c-b50f-c1cb50c8f770"
        });

    </script>


</body>

</html>