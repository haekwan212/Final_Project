package spring.siroragi.qna;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {

	@Resource(name = "qnaDAO")
	private QnaDAO qnaDAO;

	// Q&A 전체 글 목록 불러오기
	@Override
	public List<Map<String, Object>> qnaList(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaList(map);
	}
	
	@Override
	public List<Map<String, Object>> qnalistById(String id) throws Exception {
		return qnaDAO.qnalistById(id);
	}
	
	@Override
	public List<Map<String, Object>> qnalistById2(String id) throws Exception {
		return qnaDAO.qnalistById2(id);
	}

	// 회원 개인의 Q&A 목록 불러오기
	@Override
	public List<Map<String, Object>> qnaSearchMember(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaSearchMember(map);
	}

	// 상품에 해당하는 Q&A 목록 불러오기
	@Override
	public List<Map<String, Object>> qnaSearchGoods(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaSearchGoods(map);
	}

	// Q&A 상세보기
	@Override
	public Map<String, Object> selectQnaDetail(Map<String, Object> map) throws Exception {
		return qnaDAO.selectQnaDetail(map);
	}

	// Q&A 글 조회수 증가
	@Override
	public void selectQnaCount(Map<String, Object> map) throws Exception {
		qnaDAO.selectQnaCount(map);
	}

	@Override
	public void updateReplyStep(Map<String, Object> map) throws Exception {
		qnaDAO.updateReplyStep(map);
	}

	// Q&A 작성
	@Override
	public void insertQna(Map<String, Object> map) throws Exception {
		qnaDAO.insertQna(map);
	}

	// Q&A 답변달기
	@Override
	public void insertQnaReply(Map<String, Object> map) throws Exception {
		qnaDAO.insertQnaReply(map);
	}

	// Q&A 수정
	@Override
	public void qnaModify(Map<String, Object> map) throws Exception {
		qnaDAO.qnaModify(map);
	}

	// Q&A 삭제
	@Override
	public void qnaDelete(Map<String, Object> map) throws Exception {
		qnaDAO.qnaDelete(map);
	}

	// 답변 삭제
	@Override
	public void qnaReplyDelete(Map<String, Object> map) throws Exception {
		qnaDAO.qnaReplyDelete(map);
	}

	@Override
	public List<Map<String, Object>> qanlistById(String id) throws Exception {
		return qnaDAO.qnalistById(id);
	}

	@Override
	public void insertModalQna(Map<String, Object> map) throws Exception {
		qnaDAO.insertModalQna(map);
	}
	
	@Override
	public void updateRepState(Map<String, Object> map) throws Exception {
		qnaDAO.updateRepState(map);
		
	}

	// 제목&카테고리 검색
	@Override
	public List<Map<String, Object>> qnaTitleList(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaTitleList(map);
	}

	// 아이디&카테고리 검색
	@Override
	public List<Map<String, Object>> qnaMemberList(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaMemberList(map);
	}

	// 아이디 검색
	@Override
	public List<Map<String, Object>> qnaSearchMemberList(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaSearchMemberList(map);
	}

	// 제목 검색
	@Override
	public List<Map<String, Object>> qnaSearchTitleList(Map<String, Object> map) throws Exception {
		return qnaDAO.qnaSearchTitleList(map);
	}

	// Q&A 비밀번호 확인(비회원때문에 필요)
}
