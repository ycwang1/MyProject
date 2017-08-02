package com.run.test;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		/* 在 Filter 实例被 Web 容器从服务移除之前调用 */

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// 输出站点名称
		System.out.println("站点地址：www.baidu.com");
		// 把请求传回过滤链
		arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// 获取初始化参数
		String site = config.getInitParameter("site");
		// 输出初始化参数
		System.out.println("网站名称："+site);
	}

}
