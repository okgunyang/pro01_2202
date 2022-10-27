package pro01.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

import org.junit.Test;

public class PostgreBoardTest {

	private final static Logger log = Logger.getGlobal();
    private static final String DRIVER = "org.postgresql.Driver";
    private static final String URL = "jdbc:postgresql://localhost:5432/myshop";
    private static final String USER = "postgres";
    private static final String PW = "1234";
    
	@Test
	public void connectionTest() throws ClassNotFoundException {
		
		Class.forName(DRIVER);
		
		String sql = "select * from board";
		try(
			Connection conn = DriverManager.getConnection(URL,USER,PW);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			) {
			
			assertNotNull(conn);
			log.info("conn : " + conn);
			log.info("pstmt : " + pstmt);
			
			while(rs.next()) {
				log.info(rs.getString("subject"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}	

}
