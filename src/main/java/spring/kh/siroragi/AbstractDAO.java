package spring.kh.siroragi;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AbstractDAO {
	protected Log log = LogFactory.getLog(AbstractDAO.class);

	@Autowired
	private SqlSessionTemplate sqlSession;

	protected void printQueryId(String queryId) {
		if (log.isDebugEnabled()) {
			log.debug("\t QueryId  \t:  " + queryId);
		}
	}

	public Object insert(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.insert(queryId, params);
	}

	public Object update(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.update(queryId, params);
	}

	public Object delete(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.delete(queryId, params);
	}

	public Object selectOne(String queryId) {
		printQueryId(queryId);
		return sqlSession.selectOne(queryId);
	}

	public Object selectOne(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.selectOne(queryId, params);
	}

	@SuppressWarnings("rawtypes")
	public List selectList(String queryId) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId);
	}

	@SuppressWarnings("rawtypes")
	public List selectList(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId, params);
	}

	// 가입한 회원 아이디 검색
	@SuppressWarnings("rawtypes")
	public List searchMemberList0(String map, Object params) {
		printQueryId(map);
		return sqlSession.selectList(map, params);
	}

	// 이름 검색

	// 가입한 회원 이름 검색
	@SuppressWarnings("rawtypes")
	public List searchMemberList1(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId, params);
	}


	// 회원아이디로 검색

	// 가입한 회원 전화번호 검색
	@SuppressWarnings("rawtypes")
	public List searchMemberList2(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId, params);
	}


	// E-Mail 검색
	// 가입한 회원 이메일 검색

	@SuppressWarnings("rawtypes")
	public List searchMemberList3(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId, params);
	}

	// 글제목 검색
	@SuppressWarnings("rawtypes")
	public List searchTitleList(String queryId, Object params, String isSearch) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId, params);
	}

	// 글내용 검색
	@SuppressWarnings("rawtypes")
	public List searchContentList(String queryId, Object params, String isSearch) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId, params);
	}

}
