<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.fp.member.model.vo.Member" %>
<%
String contextPath = request.getContextPath();
Member loginMember = (Member)session.getAttribute("loginUser");
String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="<%= contextPath %>/resources/assets/js/color-modes.js"></script>
  <script src="https://kit.fontawesome.com/12ec987af7.js" crossorigin="anonymous"></script>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.122.0">
  <title>FILM PICK</title>
<!-- 부트스트랩 기능을 위한 CDN 방식 연결 -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">  -->
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- ----------------------- -->
<!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- ---- -->
  <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/headers/">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

  <link href="<%= contextPath %>/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
  
  	body{
  		background-color:black;
  	}
  
    #header {
      height: 100px;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      z-index: 100;
    }

    .content_wrap {
      padding-top: 100px;
      margin:auto;
      min-height: 1500px;
      width: 1500px;
    }

    .content {
      height: 100%;
      color: white;
    }

    #footer {
      height: 100px;
    }

    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    .search_bar {
      width: 400px;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
    @media (max-width: 990px) {
      #header {
        height: 250px;
      }
      .content_wrap {
        padding-top: 250px;
      }
      .search_bar {
        width: 600px;
      }
    }

    .b-example-divider {
      width: 100%;
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }

    .btn-bd-primary {
      --bd-violet-bg: #712cf9;
      --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

      --bs-btn-font-weight: 600;
      --bs-btn-color: var(--bs-white);
      --bs-btn-bg: var(--bd-violet-bg);
      --bs-btn-border-color: var(--bd-violet-bg);
      --bs-btn-hover-color: var(--bs-white);
      --bs-btn-hover-bg: #6528e0;
      --bs-btn-hover-border-color: #6528e0;
      --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
      --bs-btn-active-color: var(--bs-btn-hover-color);
      --bs-btn-active-bg: #5a23c8;
      --bs-btn-active-border-color: #5a23c8;
    }

    .bd-mode-toggle {
      z-index: 1500;
    }

    .bd-mode-toggle .dropdown-menu .active .bi {
      display: block !important;
    }

    .menu_buttons {
      margin-left: 20px;
    }

    .menu_buttons:hover {
      transform: scale(1.3);
    }

    .menu_buttons_co {
      margin-left: 10px;
      display: none;
    }

    .menu_buttons:hover + .menu_buttons_co {
      display: block;
    }

    .search {
      position: relative;
    }

    .searchBtn {
      position: absolute;
      margin: auto;
      top: 0;
      right: 0;
    }

    .search-info {
      margin-top: 200px;
      height: 5%;
      background-color: gray;
    }
    
    .profile-area{
    	border: 2px solid #F72798;
    	height: 50px; 
    	width: 50px;
    }

  </style>

  <!-- Custom styles for this template -->
  <link href="<%= contextPath %>/resources/css/headers.css" rel="stylesheet">
  <link rel="stylesheet" href="<%= contextPath %>/resources/css/starRating_forReviewTap.css">
  <link rel="stylesheet" href="<%= contextPath %>/resources/css/like&dislike_movieDetail.css">
</head>
<body>
	
	<%if(alertMsg != null){ //alert 시킬만한 알람문구가 존재할 경우 %>
    <script>
    	alert('<%=alertMsg%>');
    </script>
    <%
    	session.removeAttribute("alertMsg");
    } %>
    
  <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check2" viewBox="0 0 16 16">
      <path
        d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
    </symbol>
    <symbol id="circle-half" viewBox="0 0 16 16">
      <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z" />
    </symbol>
    <symbol id="moon-stars-fill" viewBox="0 0 16 16">
      <path
        d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z" />
      <path
        d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z" />
    </symbol>
    <symbol id="sun-fill" viewBox="0 0 16 16">
      <path
        d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" />
    </symbol>
  </svg>

  <!-- <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
    <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center" id="bd-theme" type="button"
      aria-expanded="false" data-bs-toggle="dropdown" aria-label="Toggle theme (auto)">
      <svg class="bi my-1 theme-icon-active" width="1em" height="1em">
        <use href="#circle-half"></use>
      </svg>
      <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
    </button>
    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
      <li>
        <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light"
          aria-pressed="false">
          <svg class="bi me-2 opacity-50" width="1em" height="1em">
            <use href="#sun-fill"></use>
          </svg>
          Light
          <svg class="bi ms-auto d-none" width="1em" height="1em">
            <use href="#check2"></use>
          </svg>
        </button>
      </li>
      <li>
        <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark"
          aria-pressed="false">
          <svg class="bi me-2 opacity-50" width="1em" height="1em">
            <use href="#moon-stars-fill"></use>
          </svg>
          Dark
          <svg class="bi ms-auto d-none" width="1em" height="1em">
            <use href="#check2"></use>
          </svg>
        </button>
      </li>
      <li>
        <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto"
          aria-pressed="true">
          <svg class="bi me-2 opacity-50" width="1em" height="1em">
            <use href="#circle-half"></use>
          </svg>
          Auto
          <svg class="bi ms-auto d-none" width="1em" height="1em">
            <use href="#check2"></use>
          </svg>
        </button>
      </li>
    </ul>
  </div> -->

  <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="bootstrap" viewBox="0 0 118 94">
      <title>Bootstrap</title>
      <path fill-rule="evenodd" clip-rule="evenodd"
        d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
      </path>
    </symbol>
    <symbol id="home" viewBox="0 0 16 16">
      <path
        d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
    </symbol>
    <symbol id="speedometer2" viewBox="0 0 16 16">
      <path
        d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z" />
      <path fill-rule="evenodd"
        d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z" />
    </symbol>
    <symbol id="table" viewBox="0 0 16 16">
      <path
        d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z" />
    </symbol>
    <symbol id="people-circle" viewBox="0 0 16 16">
      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
      <path fill-rule="evenodd"
        d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
    </symbol>
    <symbol id="grid" viewBox="0 0 16 16">
      <path
        d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z" />
    </symbol>
  </svg>

  <main>
    <header style="background-color: black!important;" id="header" class="p-3 text-bg-dark">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <a href="<%= contextPath %>/mainpage.fp" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <img style="height: 65px;" src="<%= contextPath %>/resources/img/logo.png" alt="">
          </a>

          <ul style="display: flex; align-items: center;" class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <!-- <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li> -->
            <li class="menu_buttons"><a href="<%= contextPath %>/openexplo.mo?page=1" class="nav-link px-2 text-white"><i class="fa-solid fa-film fa-2x"></i></a></li>
            <li class="menu_buttons_co">영화탐색</li>
            <li class="menu_buttons"><a href="<%= contextPath %>/main.bo" class="nav-link px-2 text-white"><i class="fa-solid fa-message fa-2x"></i></a></li>
            <li class="menu_buttons_co">커뮤니티</li>
            <li class="menu_buttons"><a href="<%= contextPath %>/list.no?page=1" class="nav-link px-2 text-white"><i class="fa-solid fa-headphones fa-2x"></i></i></a></li>
            <li class="menu_buttons_co">공지사항/고객센터</li>
          </ul>

          <form action="<%= contextPath %>/search.fp" method="get" class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 search" role="search">
            <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="영화, 인물"
              aria-label="Search" style="width: 400px;" name="searchKeyword">
            <button type="submit" class="btn btn-outline-light searchBtn" style="--bs-btn-border-color: RGB(247, 39, 140);
            --bs-btn-color:RGB(247, 39, 140);
            --bs-btn-hover-color: #000;
            --bs-btn-hover-bg: RGB(247, 39, 140);
            --bs-btn-hover-border-color: #000;">Search</button>
          </form>

		  <% if(loginMember == null){ %>
          <!-- 로그인 전에 보여질 내용 -->
          <div class="text-end" style="width: 200px">
            <a href="<%= contextPath %>/loginForm.me" type="button" class="btn btn-outline-light me-2" id="login_btn">Login</a>
            <a href="<%= contextPath %>/signupCheckForm.me" type="submit" class="btn btn-outline-warning" id="signup_btn" style="--bs-btn-border-color: RGB(247, 39, 140);
              --bs-btn-color: RGB(247, 39, 140);
              --bs-btn-hover-color: #000;
              --bs-btn-hover-bg: RGB(247, 39, 140);
              --bs-btn-hover-border-color: #000;">Sign-up</a>
          </div>
        
          <%}else{%>
          <!-- 로그인 시 보여질 내용 -->
          <div class="dropdown text-end" style="width: 200px; padding-left: 100px !important;">
          	<div class="profile-area">
              <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa-solid fa-user fa-2x" id="profile" style="color: #F72798; padding-right: 8px; padding-top: 5px; display: block;"></i>
              </a>
              <ul class="dropdown-menu text-small">
                <li><a class="dropdown-item" href="<%=contextPath%>/myPage.me">회원정보</a></li>
                <li><a class="dropdown-item" href="<%=contextPath%>/views/mypage/movieStarRatingList.jsp">별점 남긴 영화</a></li>
                <li><a class="dropdown-item" href="<%=contextPath%>/views/mypage/movieLikeList.jsp">찜한 영화 목록</a></li>
                <li><a class="dropdown-item" href="<%=contextPath%>/myPlist.me?page=1">작성글 조회</a></li>
                <li><a class="dropdown-item" href="#">고객센터</a></li>
                <li><a class="dropdown-item" href="<%=contextPath%>/views/mypage/msgBox.jsp">메시지함</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<%=contextPath%>/logout.me">로그아웃</a></li>
              </ul>
          	</div>      
          </div> 
          <%} %>

        </div>
      </div>
    </header>

  </main>

	<script src="<%= contextPath %>/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<%= contextPath %>/resources/assets/js/like&dislike.js"></script>
    <script>
        $(".more_info_btn").each(function (index, el) {
            $(this).click(function () {
                $(el).parent().parent(".review_content").next().css("display", "block");
                $(el).parent().parent(".review_content").css("display", "none");
            })
        })


        $(".more_info_btn_long").each(function (index, el) {
            $(this).click(function () {
                $(el).parent().parent(".review_content_long").prev().css("display", "block");
                $(el).parent().parent(".review_content_long").css("display", "none");
            })
        })

        $(".long_summary_btn").click(function() {
            $(this).parent().css("display", "none");
            $(this).parent().next().css("display", "block");
        })

        $(".short_summary_btn").click(function() {
            $(this).parent().css("display", "none");
            $(this).parent().prev().css("display", "block");
        })
        
    </script>
</body>
</html>