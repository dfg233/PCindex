package com.pcindex.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

/**
 * 应用生命周期监听：记录启动与关闭，便于在此初始化全局资源（连接池、缓存等）。
 */
@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String name = sce.getServletContext().getServletContextName();
        sce.getServletContext().log(name + " 启动完成");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        sce.getServletContext().log("PCindex 已关闭");
    }
}
