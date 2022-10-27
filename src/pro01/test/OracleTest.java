package pro01.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

import org.junit.Test;

public class OracleTest {
	private final static Logger log = Logger.getGlobal();
	private final static String DRIVER = "oracle.jdbc.OracleDriver";
	private final static String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final static String USER = "system";
	private final static String PASS = "1234";
	@Test
	public void connectTest() throws ClassNotFoundException {
		Class.forName(DRIVER);
		String sql = "select sysdate now from dual";
		try(
				Connection con = DriverManager.getConnection(URL, USER, PASS);
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		){
			log.info("con : "+con);
			log.info("pstmt : "+pstmt);
			rs.next();
			log.info("현재 : "+rs.getDate("now"));
			rs.close();
			pstmt.close();
			con.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}

}
