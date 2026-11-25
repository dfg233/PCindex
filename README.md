# PCindex

PC 攒机指南 —— Java Web 项目（Maven + Jakarta Servlet 6 / JSP 3）。

## 环境要求

| 组件 | 版本 |
| --- | --- |
| JDK | 17 或更高 |
| Maven | 3.9+ |
| Servlet 容器 | Tomcat 10.1+（需支持 Jakarta EE 10） |

> 注意是 Jakarta 命名空间（`jakarta.servlet.*`）。旧的 `javax.servlet.*` 容器（Tomcat 9 及以下）无法运行本项目。

## 目录结构

```
PCindex/
├── pom.xml                        Maven 构建配置（打包为 war）
├── .gitignore
├── src/
│   ├── main/
│   │   ├── java/com/pcindex/
│   │   │   ├── controller/        控制器（Servlet）
│   │   │   │   └── HomeServlet.java
│   │   │   ├── filter/            过滤器
│   │   │   │   └── EncodingFilter.java
│   │   │   ├── listener/          监听器
│   │   │   │   └── AppContextListener.java
│   │   │   ├── model/             领域模型 / 实体
│   │   │   ├── repository/        数据访问层
│   │   │   ├── service/           业务逻辑层
│   │   │   ├── config/            配置与常量
│   │   │   └── util/              通用工具
│   │   ├── resources/
│   │   │   └── application.properties
│   │   └── webapp/
│   │       ├── index.jsp          欢迎页（重定向到 /home）
│   │       ├── WEB-INF/
│   │       │   ├── web.xml        容器全局配置
│   │       │   └── views/
│   │       │       └── home.jsp   首页视图（不可被直接访问）
│   │       └── static/
│   │           ├── css/style.css
│   │           └── js/main.js
│   └── test/java/com/pcindex/
│       └── SmokeTest.java
```

## 常用命令

```bash
mvn clean package        # 构建，产物在 target/PCindex.war
mvn clean compile        # 只编译
mvn test                 # 运行单元测试
```

## 本地运行

1. 构建 war：`mvn clean package`
2. 将 `target/PCindex.war` 放进 Tomcat 10.1+ 的 `webapps/` 目录，或直接在 IDEA 里配置 Tomcat 运行。
3. 浏览器访问 `http://localhost:8080/PCindex/`。

## 约定

- 请求路径统一由 `controller` 中的 Servlet 处理，页面放 `WEB-INF/views` 下，由 Servlet 转发。
- 静态资源放 `webapp/static/`，页面中通过 `\${pageContext.request.contextPath}/static/...` 引用。
- 分层：`controller → service → repository`，`model` 为数据载体，工具类放 `util`。
