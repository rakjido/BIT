package kr.or.bit;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class DataSourceTest {
		@Inject
		private DataSource dataSource;
		
		@Test
		public void testConnection() {
			try {
				Connection con = null;
				con = dataSource.getConnection();
				System.out.println("Connection : " + con);
			
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
}
