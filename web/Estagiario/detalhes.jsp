<%-- 
    Document   : Detalhes
    Created on : 04/11/2019, 22:52:19
    Author     : marlo
--%>


<%@page import="br.com.fatecpg.dao.EstagiarioDAO"%>
<%@page import="br.com.fatecpg.jdbc.Estagiario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="../WEB-INF/jspf/head.jspf"%>
    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="../WEB-INF/jspf/sidebar.jspf"%>
            <!-- End of Sidebar -->
            <%
                int id = Integer.parseInt(request.getParameter("id"));
                EstagiarioDAO dao = new EstagiarioDAO();
                Estagiario estagiario = dao.getEstagiarioById(id);
            %>
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <%@include file="../WEB-INF/jspf/topbar.jspf"%>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h3 class="card-title">Estagiário</h3>
                            </div>
                            <div class="card-body">
                                <div>
                                    <div>
                                        <form>
                                            <div class="form-group">
                                                <label for="id" class="form-text">ID</label>
                                                <input type="text" name="id" id="id" value="<%=estagiario.getId()%>" disabled class="form-control"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="name" class="form-text">Name</label>
                                                <input type="text" name="name" id="name" value="<%=estagiario.getNome()%>" disabled class="form-control"/>
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
                    <%@include file="../WEB-INF/jspf/footer.jspf"%>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <%@include file="../WEB-INF/jspf/scripts.jspf"%>

    </body>

</html>