package spring.siroragi.qna;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.kh.siroragi.AbstractDAO;

@Repository("qnaDAO")
public class QnaDAO extends AbstractDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// Q&A 전체 글 목록 불러오기
	public List<Map<String, Object>> qnaList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("qna.qnaList", map);
	}

	// Q&A 상세보기
	public Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception {
		return sqlSession.selectOne("qna.selectQnaDetail", map);
	}

	// Q&A 글 조회수 증가
	public void selectQnaCount(Map<String, Object> map) throws Exception {
		sqlSession.update("qna.selectQnaCount", map);
	}

	public void updateReplyStep(Map<String, Object> map) throws Exception {
		sqlSession.update("qna.updateReplyStep", map);

	}

	// Q&A 등록하기
	public void insertQna(Map<String, Object> map) throws Exception {
		sqlSession.insert("qna.insertQna", map);
	}

	// Q&A에 답변달기
	public void insertQnaReply(Map<String, Object> map) throws Exception {
		sqlSession.update("qna.updateReplyStep", map);
	}

	// Q&A 수정
	public void qnaModify(Map<String, Object> map) throws Exception {
		sqlSession.update("qna.qnaModify", map);
	}

	// Q&A 삭제
	public void qnaDelete(Map<String, Object> map) throws Exception {
		sqlSession.update("qna.qnaDelete", map);
	}

	// 답변 삭제
	public void qnaReplyDelete(Map<String, Object> map) throws Exception {
		sqlSession.update("qna.qnaReplyDelete", map);
	}

	// 답변대기, 답변완료 상품문의 불러오기
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> qnalistById(String MEMBER_NUMBER) throws Exception {
		return (List<Map<String, Object>>) selectList("qna.qnalistByNumber", MEMBER_NUMBER);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> qnalistById2(String MEMBER_NUMBER) throws Exception {
		return (List<Map<String, Object>>) selectList("qna.qnalistByNumber2", MEMBER_NUMBER);
	}

	// 답변 상태 업데이트
	public void updateRepState(Map<String, Object> map) throws Exception {
		update("qna.updateRepState", map);
	}

	public void insertModalQna(Map<String, Object> map) throws Exception {
		insert("qna.insertModalQna", map);
	}

	// 제목&카테고리 검색
	public List<Map<String, Object>> qnaTitleList(Map<String, Object> map) {
		return sqlSession.selectList("qna.qnaTitleList", map);
	}

	// 아이디&카테고리 검색
	public List<Map<String, Object>> qnaMemberList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("qna.qnaMemberList", map);
	}

	// 아이디 검색
	public List<Map<String, Object>> qnaSearchMemberList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("qna.qnaSearchMemberList", map);
	}

	// 제목 검색
	public List<Map<String, Object>> qnaSearchTitleList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("qna.qnaSearchTitleList", map);
	}

	// 답변상태 검색
	public List<Map<String, Object>> qnaRepState(Map<String, Object> map) throws Exception {
		return sqlSession.selectList("qna.qnaRepState", map);
	}

	// qna 새글 알람
	@SuppressWarnings(value = "unchecked")
	public int qnaNewAlarm(Map<String, Object> map) throws Exception {
		return (int) selectOne("qna.qnaNewAlarm", map);
	}

	public void insertOneToOne(Map<String, Object> map) throws Exception {
		insert("qna.insertOneToOne", map);
	}
}
