package com.run.test;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloTag extends SimpleTagSupport {
	public void doTag() throws IOException{
		JspWriter out = getJspContext().getOut();
		out.print("hello custom Tag!");
	}
}
