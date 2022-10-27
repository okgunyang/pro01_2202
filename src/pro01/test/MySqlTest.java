package pro01.test;

import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

import org.junit.Test;

public class MySqlTest {
    private final static Logger log = Logger.getGlobal();
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/study?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PW = "a1234";
    
	@Test
	public void connectionTest() throws ClassNotFoundException {
		
		Class.forName(DRIVER);
		
		String sql = "select now() as time";
		try(
			Connection conn = DriverManager.getConnection(URL,USER,PW);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			) {
			
			assertNotNull(conn);
			log.info("conn : " + conn);
			log.info("pstmt : " + pstmt);
			
			rs.next();
			log.info(rs.getString("time"));
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}	
}
