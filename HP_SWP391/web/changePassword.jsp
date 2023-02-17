<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Change Password</title>

        <!-- Custom fonts for this template -->
        <link href="Hieu/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="Hieu/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="Hieu/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
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
                            <!--<h1 class="h3 mb-2 text-gray-800">Manage Mentee</h1>-->
                            <!-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                                For more information about DataTables, please visit the <a target="_blank"
                                    href="https://datatables.net">official DataTables documentation</a>.</p>
                            -->
                            <!-- DataTales Example -->
                            <form action="changePassword" method="post">
                                <section id="horizontal-input">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h4 class="card-title">Update Profile</h4>
                                                </div>

                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row align-items-center">
                                                                <div class="col-lg-2 col-3">
                                                                    <label class="col-form-label">Old Password</label>
                                                                </div>
                                                                <div class="col-lg-10 col-9">
                                                                    <input type="password" id="helperText oldpw" class="form-control" name="oldpw"
                                                                           placeholder="Enter your old password" required="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row align-items-center">
                                                                <div class="col-lg-2 col-3">
                                                                    <label class="col-form-label">New Password</label>
                                                                </div>
                                                                <div class="col-lg-10 col-9 newpw">
                                                                    <input type="password" id="newpw" class="form-control" name="newpw"
                                                                           placeholder="Enter new password to change" required="">
                                                                </div>
                                                            </div> 
                                                        </div>                                           
                                                    </div>      
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group row align-items-center">
                                                                <div class="col-lg-2 col-3">
                                                                    <label class="col-form-label">Re-Enter New Password</label>
                                                                </div>
                                                                <div class="col-lg-10 col-9">
                                                                    <input type="password" id="helperText" class="form-control" name="repass"
                                                                           placeholder="Confirm your new password" required="">
                                                                </div>
                                                            </div> 
                                                        </div>                                           
                                                    </div>                                                        
                                                </div>
                                            </div>
                                        </div>
                                </section>
                                <button onclick="myFunc()" type="submit" id="sweet" class="btn btn-primary" id="sweet" style="padding-left:25px;padding-right: 25px;padding-top: 10px; padding-bottom: 10px; margin-bottom: 20px;"><i
                                        style="margin-right: 5px;">
                                    </i>Save</button>
                            </form>
                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; Your Website 2022</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

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
        <script src="Hieu/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="Hieu/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="Hieu/js/demo/datatables-demo.js"></script>
        <script>
            function myFunc() {
                alert("Update successfully!");
            }
        </script>
    </body>

</html>
