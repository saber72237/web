package com.aaa.filter;
 
import java.io.IOException;
 
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
 
/**
 * @Discription �ַ����������
 * @author ***
 * @company ***
 * @date 2017-11-18
 **/
public class CharsetEncodingFilter implements Filter {  
	
	private static String encoding; // ����������ճ�ʼ����ֵ
 
	public void destroy() {
		
	}
 
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// �����ַ���������
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
		
	}
	// ��ʼ��
	public void init(FilterConfig config) throws ServletException {
		// ����web.xml�����ļ��еĳ�ʼ����
		encoding = config.getInitParameter("CharsetEncoding");
		
	}
 
}
