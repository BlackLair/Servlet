<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
	list.add(map);
	String category = request.getParameter("category");
	if(category != null){
		if(category.equals("terrestrial")) 			category = "지상파";
		else if(category.equals("drama")) 			category = "드라마";
		else if(category.equals("entertainments")) 	category = "예능";
		else if(category.equals("movies")) 			category = "영화";
		else if(category.equals("sports"))			category = "스포츠";	
	}
	
%>
		<section>
			<table class="table">
				<thead class="text-center">
					<tr>
						<th width="30%">채널</th>
						<th width="40%">채널명</th>
						<th width="30%">카테고리</th>
					</tr>
				</thead>
				<tbody class="text-center">
				<%	for(int i = 0; i < list.size(); i++){
						Map<String, String> temp = list.get(i);
						if(category == null || category.equals(temp.get("category"))){
					%>
				
					<tr>
						<td><%= temp.get("ch") %></td>
						<td><%= temp.get("name") %></td>
						<td><%= temp.get("category") %></td>
					</tr>
				<% }} %>
				</tbody>
			</table>
		</section>