<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>Tables - SB Admin</title>
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
  <link href="../css/styles.css" rel="stylesheet" />
  <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3 topLogo" href="index.html">
      <img class="logo" src="../images/logo.png">
      <style>
          .logo {
              width: 30px;
              margin-right: 8px;
          }

      </style>
      <span>기쁘띠</span>
  </a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!">
      <i class="fas fa-bars"></i>
    </button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
      <div class="input-group">
        <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
          aria-describedby="btnNavbarSearch" />
        <button class="btn btn-primary" id="btnNavbarSearch" type="button">
          <i class="fas fa-search"></i>
        </button>
      </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
          aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
          <li><a class="dropdown-item" href="#!">Settings</a></li>
          <li><a class="dropdown-item" href="#!">Activity Log</a></li>
          <li>
            <hr class="dropdown-divider" />
          </li>
          <li><a class="dropdown-item" href="#!">Logout</a></li>
        </ul>
      </li>
    </ul>
  </nav>
  <div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
          <div class="nav">

            <div class="sb-sidenav-menu-heading">회원
            </div>
            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts-user"
              aria-expanded="false" aria-controls="collapseLayouts-user">
              <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
              회원 관리
              <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
            </a>
            <div class="collapse" id="collapseLayouts-user" aria-labelledby="headingOne"
              data-bs-parent="#sidenavAccordion">
              <nav class="sb-sidenav-menu-nested nav">
                <a class="nav-link" href="userList.html">유저 조회</a>
                <a class="nav-link" href="userInfo.html">유저 수정</a>
              </nav>
            </div>
            <div class="sb-sidenav-menu-heading">상품
            </div>
            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts-product"
              aria-expanded="false" aria-controls="collapseLayouts-product">
              <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
              상품 관리
              <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
            </a>
            <div class="collapse" id="collapseLayouts-product" aria-labelledby="headingOne"
              data-bs-parent="#sidenavAccordion">
              <nav class="sb-sidenav-menu-nested nav">
                <a class="nav-link" href="productList.html">상품 관리</a>
                <a class="nav-link" href="productInsert.html">상품 등록</a>
              </nav>
            </div>
            <div class="sb-sidenav-menu-heading">거래</div>
            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts-tran"
              aria-expanded="false" aria-controls="collapseLayouts-tran">
              <div class="sb-nav-link-icon">
                <i class="fas fa-columns"></i>
              </div>
              거래 관리
              <div class="sb-sidenav-collapse-arrow">
                <i class="fas fa-angle-down"></i>
              </div>
            </a>
            <div class="collapse" id="collapseLayouts-tran" aria-labelledby="headingOne"
              data-bs-parent="#sidenavAccordion">
              <nav class="sb-sidenav-menu-nested nav">
                <a class="nav-link" href="./TransList.html">거래 내역</a><!--거래 조회페이지-->
              </nav>
            </div>
            <div class="sb-sidenav-menu-heading">고객지원</div>
            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts-customer"
              aria-expanded="false" aria-controls="collapseLayouts-customer">
              <div class="sb-nav-link-icon">
                <i class="fas fa-columns"></i>
              </div>
              고객
              <div class="sb-sidenav-collapse-arrow">
                <i class="fas fa-angle-down"></i>
              </div>
            </a>
            <div class="collapse" id="collapseLayouts-customer" aria-labelledby="headingOne"
              data-bs-parent="#sidenavAccordion">
              <nav class="sb-sidenav-menu-nested nav">
                <a class="nav-link" href="#">신고 신청 게시판</a><!--신고 게시판페이지-->
                <a class="nav-link" href="#">신고 내역 조회</a><!--상품 조회페이지-->
              </nav>
            </div>



            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
              <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth"
                  aria-expanded="false" aria-controls="pagesCollapseAuth">
                  Authentication
                  <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordionPages">
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="login.html">Login</a>
                    <a class="nav-link" href="register.html">Register</a>
                    <a class="nav-link" href="password.html">Forgot Password</a>
                  </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError"
                  aria-expanded="false" aria-controls="pagesCollapseError">
                  Error
                  <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
                  data-bs-parent="#sidenavAccordionPages">
                  <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="401.html">401 Page</a>
                    <a class="nav-link" href="404.html">404 Page</a>
                    <a class="nav-link" href="500.html">500 Page</a>
                  </nav>
                </div>
              </nav>
            </div>

          </div>

      </nav>
    </div>




    <div id="layoutSidenav_content">
      <main>
        <!-- START -->
        <div class="container-fluid px-4">
          <h1 class="mt-4">상품명${item_name}</h1>
          <!-- 나중에 ${name}으로 가져오면될듯 -->
          <ol class="breadcrumb mb-10">
            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
            <li class="breadcrumb-item active"><a href="#"></a>상품 관리</li>
          </ol>

          <!-- TABLE START -->
          <div class="card-body">
            <h3> 관리자 상품 조회 </h3>
            <table id="datatablesSimple" class="table table-bordered justify-content-center">
              <thead>
              </thead>
              <tbody>

                <tr>
                  <th>등록번호</th>
                  <td>1 ${register_id}</td>
                </tr>
                <tr>
                  <th>등록회원</th>
                  <td>user1 ${user_id}</td>
                </tr>
                <tr>
                  <th>판매가</th>
                  <td>21,000 ${sale_price}</td>
                </tr>
                <tr>
                  <th>할인율</th>
                  <td>14% ${discount}</td>
                </tr>
                <tr>
                  <th>유효 기간</th>
                  <td>20일 남음 ${avail_date}</td>
                </tr>
                <tr>
                  <th>등록 일자</th>
                  <td>2024-03-09 ${inDate}</td>
                </tr>




              </tbody>
            </table>
            <div class="box-footer text-center">
              <!-- {% if session_user_name == orm_obj.writer %} -->
              <button type="submit" class="btn btn-primary btn-sm" onclick="history.back()">뒤로가기 </button>

              <!-- {% endif %} -->
            </div>
          </div>
        </div>
      </main>
      <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid px-4">
          <div class="d-flex align-items-center justify-content-between small">
            <div class="text-muted">Copyright &copy; Your Website 2023</div>
            <div>
              <a href="#">Privacy Policy</a>
              &middot;
              <a href="#">Terms &amp; Conditions</a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
  <script src="../js/scripts.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
  <script src="../js/datatables-simple-demo.js"></script>
</body>

</html>