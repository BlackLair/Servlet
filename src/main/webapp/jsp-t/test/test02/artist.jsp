<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
%>
    
		<section class="artist p-4 d-flex">
			<img height="100%" alt="<%= artistInfo.get("name") %>" src="<%= artistInfo.get("photo") %>">
			<div class="ml-4">
				<div class="display-4"><%= artistInfo.get("name") %></div>
				<div class="mt-4 h4"><%= artistInfo.get("agency") %></div>
				<div class="mt-3 h4"><%= artistInfo.get("debute") %> 데뷔</div>
			</div>
		</section>