<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {{ put("cost", "1300"); put("name", "레힘의 활"); put("category", "무기"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "90"); put("name", "대련용 검"); put("category", "무기"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "1990"); put("name", "롱기누스의 창"); put("category", "무기"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "2100"); put("name", "드래곤 레이피어"); put("category", "무기"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("cost", "200"); put("name", "브리온의 견갑"); put("category", "방어구"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "450"); put("name", "강철 투구"); put("category", "방어구"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "1450"); put("name", "아다만티움 아머"); put("category", "방어구"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("cost", "2"); put("name", "육포"); put("category", "소비"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "12"); put("name", "마나 포션(B)"); put("category", "소비"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "40"); put("name", "마나 포션(A)"); put("category", "소비"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "60"); put("name", "중형 화살 x50"); put("category", "소비"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "75"); put("name", "대형 화살 x50"); put("category", "소비"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("cost", "12"); put("name", "기드온 광산 1일 채굴권"); put("category", "귀중품"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "80"); put("name", "사파이어 반지"); put("category", "귀중품"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "12"); put("name", "회중 시계"); put("category", "귀중품"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("cost", "120"); put("name", "룬 고트의 뿔"); put("category", "기타"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("cost", "7"); put("name", "리차드 마일스의 자서전"); put("category", "기타"); } };
	list.add(map);
	String category = request.getParameter("category");
	if(category != null){
		if(category.equals("weapon")) 			category = "무기";
		else if(category.equals("armor")) 		category = "방어구";
		else if(category.equals("consumable")) 	category = "소비";
		else if(category.equals("valuable")) 	category = "귀중품";
		else if(category.equals("etc"))			category = "기타";	
	}
	
%>
		<section>
			<table class="table">
				<thead class="text-center">
					<tr>
						<th width="30%">아이템 번호</th>
						<th width="40%">이름</th>
						<th width="30%">종류</th>
					</tr>
				</thead>
				<tbody class="text-center">
				<%	for(int i = 0; i < list.size(); i++){
						Map<String, String> temp = list.get(i);
						if(category == null || category.equals(temp.get("category"))){
					%>
				
					<tr>
						<td><%= temp.get("cost") %>골드</td>
						<td><%= temp.get("name") %></td>
						<td><%= temp.get("category") %></td>
					</tr>
				<% }} %>
				</tbody>
			</table>
		</section>