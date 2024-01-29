package com.kuwon.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header
		// response에 담길 데이터 정보
		response.setCharacterEncoding("utf-8"); // response에 담길 문자 셋
		
		// 데이터 타입 : MIME
		// text/plain : 그냥 문자열
		response.setContentType("text/plain");
		
		// response body
		// PrintWriter : response body에 데이터를 채우기 위한 객체
			
		PrintWriter out = response.getWriter();
		out.println("URL Mapping 예제");
		
		// 현재 날짜 시간 response에 담기
		Date now = new Date(); // 현재 날짜/시간 저장
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		String dateTimeString = formatter.format(now); // now에 저장된 날짜/시간을 formatter에 설정된 format에 맞게 문자열로 리턴
		out.println(dateTimeString); // 현재 시간을 response 객체에 담기 
	}
}
