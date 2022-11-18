package kr.go.jeju.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import kr.go.jeju.dto.PicDTO;
import kr.go.jeju.dto.ReviewDTO;
import kr.go.jeju.dto.ReviewDTO;

public class ReviewDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public int addReview(ReviewDTO dto) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.ADD_REVIEW);
			pstmt.setInt(1, dto.getNo());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getRegdate());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 실패");
		} catch(Exception e){
			System.out.println("SQL 실패");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}
	
	public ArrayList<ReviewDTO> getReviewList() {
		ArrayList<ReviewDTO> rList = new ArrayList<ReviewDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.REVIEW_LIST_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ReviewDTO review = new ReviewDTO();
				review.setNo(rs.getInt("no"));
				review.setContent(rs.getString("content"));
				review.setRegdate(rs.getString("regdate"));
				review.setVisited(rs.getString("visited"));
				rList.add(review);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return rList;
	}
}
