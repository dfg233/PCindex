<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${pageTitle}</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<header class="site-header">
    <h1>PCindex</h1>
    <p class="subtitle">PC 攒机指南</p>
</header>

<main class="container">
    <section class="card">
        <h2>项目已就绪</h2>
        <p>这是首页视图（位于 <code>WEB-INF/views/home.jsp</code>），由 <code>HomeServlet</code> 转发渲染。</p>
        <p>上下文路径：<code>${pageContext.request.contextPath}</code></p>
    </section>
</main>

<footer class="site-footer">
    <span>PCindex &copy; 2026</span>
</footer>

<script src="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>
