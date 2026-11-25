<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 欢迎页兜底：直接访问根路径时交给 HomeServlet 处理 --%>
<% response.sendRedirect(request.getContextPath() + "/home"); %>
