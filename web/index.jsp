<%-- 
    Document   : index
    Created on : 13/10/2019, 20:49:54
    Author     : Rafael Teixeira Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="/WEB-INF/jspf/head.jspf"%>
    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="/WEB-INF/jspf/sidebar.jspf"%>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <%@include file="/WEB-INF/jspf/topbar.jspf"%>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Guia</h1>
                        </div>

                        <!-- Content Row -->

                        <div class="row">
                            
                        </div>
                        
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <%@include file="/WEB-INF/jspf/footer.jspf"%>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <%@include file="/WEB-INF/jspf/scripts.jspf"%>

    </body>

</html>
