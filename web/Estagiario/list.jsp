<%-- 
    Document   : index.jsp
    Created on : 04/11/2019, 21:09:02
    Author     : marlo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.dao.EstagiarioDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.jdbc.Estagiario"%>
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
                                <h6 class="m-0 font-weight-bold text-primary">Customers</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nome</th>
                                                <th>Curso</th>
                                                <th>Setor</th>
                                                <th>Data de Início</th>
                                                <th>Data de Término</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                EstagiarioDAO dao = new EstagiarioDAO();
                                                ArrayList<Estagiario> estagiarios = dao.getAll();
                                                for (int i = 0; i < estagiarios.size(); i++) {%>
                                            <tr>
                                                <td><%=estagiarios.get(i).getId()%></td>
                                                <td><%=estagiarios.get(i).getNome()%></td>
                                                <td>Nome do Curso</td>
                                                <td>Nome do setor</td>
                                                <td><%=estagiarios.get(i).getDataInicio()%></td>
                                                <td><%=estagiarios.get(i).getDataInicio()%></td>
                                                <td>
                                                    <a href="detalhes.jsp?id=<%=estagiarios.get(i).getId()%>">detalhes</a>
                                                </td>
                                            </tr>
                                            <%  }
                                            %>
                                        </tbody>
                                    </table>
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
