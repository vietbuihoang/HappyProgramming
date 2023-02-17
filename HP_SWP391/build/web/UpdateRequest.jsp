<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">


    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Request Form</title>

        <!-- Custom fonts for this template-->
        <link href="Hieu/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="Hieu/css/sb-admin-2.css" rel="stylesheet">

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <jsp:include page="Sidebar.jsp"></jsp:include>

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                    <jsp:include page="Topbar.jsp"></jsp:include>

                        <!-- Begin Page Content -->
                        <div class="container-fluid">

                            <!-- Page Heading -->
                            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                <h1 class="h3 mb-0 text-gray-800">Update Request</h1>
                            </div>
                            <div class="card-body">
                                <form action="UpdateRequest" method="post">
                                    <input type="hidden" value="${req.requestID}" name="rid">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row align-items-center">
                                            <div class="col-lg-3 col-3">
                                                <label class="col-form-label">Title</label>
                                            </div>
                                            <c:if test="${role==3}">
                                                <div class="col-lg-8 col-8">
                                                    <input type="text" id="helperText" class="form-control" name="title"
                                                           placeholder="Title" value="${req.title}">
                                                </div>
                                            </c:if>


                                            <c:if test="${role==2}">
                                                <div class="col-lg-8 col-8">
                                                    <input disabled type="text" id="helperText" class="form-control" name="title"
                                                           placeholder="Title" value="${req.title}">
                                                    <input type="hidden" name="title" value="${req.title}">
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row align-items-center">
                                            <div class="col-lg-3 col-3">
                                                <label class="col-form-label">Content</label>
                                            </div>
                                            <c:if test="${role==3}">
                                                <div class="col-lg-8 col-8">
                                                    <textarea name="content" rows="5" cols="100">${req.content}</textarea>
                                                </div>
                                            </c:if>

                                            <c:if test="${role==2}">
                                                <div class="col-lg-8 col-8">
                                                    <textarea disabled name="content" rows="5" cols="100">${req.content}</textarea>
                                                    <textarea hidden name="content" rows="5" cols="100">${req.content}</textarea>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row align-items-center">
                                            <div class="col-lg-3 col-3">
                                                <label class="col-form-label">Request Skill</label>
                                            </div>
                                            <c:if test="${role==3}">
                                                <div class="col-lg-8 col-8">
                                                    <select class="form-control" name="skillID">
                                                        <option disabled="disabled" selected="selected">Choose skill</option>
                                                        <c:forEach items="${listRS}" var="rs">
                                                            <c:if test="${req.requestID==rs.requestID}">
                                                                <c:forEach items="${scList}" var="l">
                                                                    <c:if test="${l.status}">
                                                                        <c:if test="${rs.skillID==l.skillID}">
                                                                            <option selected="selected" value="${l.skillID}">${l.skillName}</option>
                                                                        </c:if>
                                                                        <c:if test="${rs.skillID!=l.skillID}">
                                                                            <option value="${l.skillID}">${l.skillName}</option>
                                                                        </c:if>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </c:if>

                                            <c:if test="${role==2}">
                                                <div class="col-lg-8 col-8">
                                                    <select class="form-control" name="skillID">
                                                        <option disabled="disabled" selected="selected">Choose skill</option>
                                                        <c:forEach items="${listRS}" var="rs">
                                                            <c:if test="${req.requestID==rs.requestID}">
                                                                <c:forEach items="${scList}" var="l">
                                                                    <c:if test="${l.status}">
                                                                        <c:if test="${rs.skillID==l.skillID}">
                                                                            <option selected="selected" value="${l.skillID}">${l.skillName}</option>
                                                                        </c:if>
                                                                        <c:if test="${rs.skillID!=l.skillID}">
                                                                            <option value="${l.skillID}">${l.skillName}</option>
                                                                        </c:if>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </c:if>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </c:if>

                                        </div> 
                                    </div>                                           
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row align-items-center">
                                            <div class="col-lg-3 col-3">
                                                <label class="col-form-label">Link meet</label>
                                            </div>
                                            <div class="col-lg-8 col-8">
                                                <input type="text" id="helperText" class="form-control" name="link"
                                                       placeholder="Link meet" value="${req.link}">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <br>
                                    <button type="submit" class="btn btn-primary" id="sweet" style="padding-left:25px;padding-right: 25px;padding-top: 10px; padding-bottom: 10px; margin-left: 500px;">
                                        Update
                                    </button>                                
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Your Website 2021</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->



    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <jsp:include page="LogOutModal.jsp"></jsp:include>

    <!-- Bootstrap core JavaScript-->
    <script src="Hieu/vendor/jquery/jquery.min.js"></script>
    <script src="Hieu/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Hieu/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Hieu/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="Hieu/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="Hieu/js/demo/chart-area-demo.js"></script>
    <script src="Hieu/js/demo/chart-pie-demo.js"></script>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>

</html>
<!-- end document-->