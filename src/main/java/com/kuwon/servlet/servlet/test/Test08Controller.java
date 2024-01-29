package com.kuwon.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요. 맛집 최고.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요.",
		        "맛집맛집맛집.맛집 맛집..맛집 맛집!맛집",
		        "맛집123맛집12"));
		
		String target = request.getParameter("target");
		
		out.println("<html><head><title>검색 결과</title></head><body>");
		
		for(int i = 0; i < list.size(); i++) {
			String temp = new String(list.get(i));
			if(temp.contains(target)) {
//				int ptr = 0;
//				int index = temp.indexOf(target, ptr);
//				while(index != -1) {
//					temp = temp.substring(0, index) + "<b>"
//							+ temp.substring(index, index + target.length()) + "</b>"
//							+ temp.substring(index + target.length());
//					ptr = index + target.length() + 7;
//					index = temp.indexOf(target, ptr);
//				}
				temp = temp.replaceAll(target, "<b>" + target + "</b>");
				out.println(temp);
				out.println("<hr>");
			}
		}
		
		out.println("</body></html>");
		
		
	}

}
