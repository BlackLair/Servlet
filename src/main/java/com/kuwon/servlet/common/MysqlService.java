package com.kuwon.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Mysql jdbc의 사용과정의 복잡한 코드 구성을 간결하게
// 메소드로사용할 수 있도록 정리
public class MysqlService {
	private static MysqlService mysqlService = null;
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	private Connection connection;
	private Statement statement;
	

	// 접속
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String url = "jdbc:mysql://localhost:3307/mytestdb";
			String id = "root";
			String password = "Pa$$w0rd";
			this.connection = DriverManager.getConnection(url, id, password);
			this.statement = connection.createStatement();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	// 쿼리 수행
	// select 수행 가능
	public ResultSet select(String query){
		ResultSet resultSet;
		try {
			resultSet = statement.executeQuery(query);
			return resultSet;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	// insert, update, delete 수행 가능
	// 반환값 : 영향을 받은 행의 개수
	public int update(String query) {
		try {
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}
	
	
	
	// 연결 종료
	public void disconnect() {
		try {
			this.statement.close();
			this.connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
