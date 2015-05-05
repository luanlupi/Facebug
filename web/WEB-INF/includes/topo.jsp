<%@page import="br.grupointegrado.facebug.model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuarioLogadoTopo = (Usuario) session.getAttribute("usuario_logado");
%>
<!-- BARRA DE NAVEGAÇÃO SUPERIOR -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav pull-left">
                <li><img class="navbar-logo-image" src="/Facebug/imagens/facebug.png" title="Facebug" /></li>
                <li><a class="brand" href="/Facebug/index.jsp">Facebug</a></li>
            </ul>
            <div class="nav-collapse collapse">
                <%-- Verifica se o usuário é diferente de Null, pois a barra de topo é exibida mesmo quando o usuário não está logado --%>
                <% if (usuarioLogadoTopo != null) {%>
                <ul class="nav pull-right">
                    <li><img class="navbar-profile-image" src="/Facebug/imagens/perfil-padrao.jpg" title="<%=usuarioLogadoTopo.getNomeCompleto()%>" /></li>
                    <li><a href="#">Perfil</a></li>
                    <li><a href="/Facebug/Login?acao=sair">Sair</a></li>
                </ul>
                <% }%>
            </div>
        </div>
    </div>
</div>