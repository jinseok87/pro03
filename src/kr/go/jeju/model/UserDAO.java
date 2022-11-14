package kr.go.jeju.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	public int idCheckPro(String id) {
		String name = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_LOGIN);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = cnt + 1;
			} else {
				cnt = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return cnt;
	}
}
