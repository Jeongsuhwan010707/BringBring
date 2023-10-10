<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>브링브링</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


  <!-- Favicons -->
  <link href="../assets/img/main/title-icon.png" rel="icon">
  <link href="../assets/img/main/title-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <!-- <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"> -->
  <!-- <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet"> -->
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">
  <link href="../assets/css/common.css" rel="stylesheet">


  <!-- =======================================================
  * Template Name: Arsha
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">
      <img src="../assets/img/main/cargo-truck-green.png" style="width: 46px;padding: 0px 7px 5px 0px;" alt="">
      <h1 class="logo me-auto" style="font-family: 'RixYeoljeongdo_Regular';"><a href="index.html">브링브링</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="#about">배출안내</a></li>
          <!-- <li><a class="nav-link scrollto" href="#services">수거신고</a></li> -->
          <li><a class="nav-link   scrollto" href="#portfolio">공지사항</a></li>
          <li><a class="nav-link scrollto" href="#team">문의게시판</a></li>
          <li><a class="nav-link scrollto" href="#team">나눔게시판</a></li>
          
          </li>
          <li><button class="getstarted scrollto">로그인</button>
            <!-- <a  href="#login">로그인</a> -->
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <div style="width: 100%;height: 74px;"></div>
  <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center" style="width: 100%;margin: 0 auto;">
      <div style="width: 1300px;margin: 0 auto;">
        <div style="float: left;margin-top: 60px;">
          <h1 style="font-family: 'LINESeedKR-Bd';">나눔 게시판</h1>
          <div style="width: 100%;height: 30px;"></div>
          <h4 style="color: rgb(189, 245, 229);">당신의 낡고 병든 추억이 누군가에겐 도움이 될 수 있습니다.</h4>
        </div>
        <div style="display: flex;flex-direction: row;justify-content: flex-end;">
          <img src="../assets/img/divide/free-icon-gift-3835774.png" style="width: 250px;" alt="">
        </div>
      </div>
    </section>
    
  <main style="width: 100%;margin: 0 auto;padding-top: 50px;">
    <section data-aos="fade-up">
      <div style="width: 1000px;margin: 0 auto;">    
          <div class="input-group" style="width: 600px;float: left;" >
              <select name="searchCondition" class="form-select" aria-label="Default select example" style="margin-right: 8px;border: 1px solid #adb5bd;">
                  <option value="all">전체</option>
                  <option value="title">제목</option>
                  <option value="nickName">지역</option>
                </select>
              <input name="searchKeyword" style="width: 200px;border: 1px solid #adb5bd;" class="form-control me-2" type="search" placeholder="검색어를 입력해주세요." aria-label="Search">
              <button class="btn btn-outline-success" style="border-bottom-right-radius: 5px;border-top-right-radius: 5px;z-index: 1;width: 80px;" type="submit" >Search</button>
          </div>
          <div style="float: right;">
            <button type="button" class="btn btn-success">글 등록</button>
          </div>
          <div style="width: 100%;float: left;border-top: 1px solid #ccc;margin-top: 15px;padding: 10px 0px">
              <p style="float:left;font-size: 18px;margin: 0;padding: 5px;font-weight: 600;font-family: 'SUITE-Regular';letter-spacing: 2px;padding-left: 15px;"># 20건</p>
              <p style="margin: 0;padding: 7px 13px 0px 8px;margin-left: 3px;float: right;">
              <a href="/community/certify.tp" style="text-decoration:underline;">최신순 </a>|
              <a href="/community/certify.tp?sortType=likeDESC">추천순</a>
          </div>
          <table data-aos-delay="50" class="table" style="text-align: center;margin:0;margin-top: 5px;">
            <thead>
              <tr class="table" style="border-bottom: 2px solid #ccc;">
              </tr>
            </thead>
            <tbody>
              <tr>
              <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                  <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                  <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                  </div>
              </td >
              <td style="text-align: left;font-size: 17px;">
                  <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                      <a href="#">제목</a>
                  </h4> 
                  <br>
                  나눔 지역 : <br>
                  카테고리 : 
              </td>
              <td style="width: 100px;">
                  <div style="margin-top: 110px;">
                    <i class="bi bi-chat"></i>
                    2 &nbsp;
                    <i class="bi bi-heart"></i>
                    2
                  </div>
              </td>
              </tr>
              <!-- 아 -->
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
              <tr>
                <td style="width: 220px;padding-top: 20px;padding-bottom: 20px;">
                    <div class="card" style="width: 200px;height: 120px;overflow: hidden">
                    <div class="card-img-top" style="width: 100%; height: 100%; background-image: url(${community.boardFilePath}); background-position: center center;"></div>
                    </div>
                </td >
                <td style="text-align: left;font-size: 17px;">
                    <h4 style="padding-top: 20px;font-weight: 600;margin: 0;font-size: 22px;">
                        <a href="#">제목</a>
                    </h4> 
                    <br>
                    나눔 지역 : <br>
                    카테고리 : 
                </td>
                <td style="width: 100px;">
                    <div style="margin-top: 110px;">
                      <i class="bi bi-chat"></i>
                      2 &nbsp;
                      <i class="bi bi-heart"></i>
                      2
                    </div>
                </td>
              </tr>
            </tbody>
          </table>
      </div>
    </section>
    <div style="width: 1000px;margin: 0 auto;margin-top: 60px;">
      <nav aria-label="Page navigation example" style="display: flex;">
        <ul class="pagination" style="margin: 0 auto;">
          <li class="page-item"><a class="page-link" href="#">Previous</a></li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">4</a></li>
          <li class="page-item"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
      </nav>
    </div>
  </main>
  <!-- 메인 -->
<!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>브링브링</h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#"></a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="../assets/vendor/aos/aos.js"></script>
  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="../assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../assets/js/main.js"></script>

  <!-- 채널톡 api -->
  <script>
    (function () { var w = window; if (w.ChannelIO) { return w.console.error("ChannelIO script included twice."); } var ch = function () { ch.c(arguments); }; ch.q = []; ch.c = function (args) { ch.q.push(args); }; w.ChannelIO = ch; function l() { if (w.ChannelIOInitialized) { return; } w.ChannelIOInitialized = true; var s = document.createElement("script"); s.type = "text/javascript"; s.async = true; s.src = "https://cdn.channel.io/plugin/ch-plugin-web.js"; var x = document.getElementsByTagName("script")[0]; if (x.parentNode) { x.parentNode.insertBefore(s, x); } } if (document.readyState === "complete") { l(); } else { w.addEventListener("DOMContentLoaded", l); w.addEventListener("load", l); } })();

    ChannelIO('boot', {
      "pluginKey": "3e438b51-7087-4b0c-b50f-c1cb50c8f770"
    });

  </script>
  
  
</body>

</html>