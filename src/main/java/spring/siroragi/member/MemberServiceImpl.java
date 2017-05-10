package spring.siroragi.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;

	@Override
	public List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception {
		return memberDAO.selectMemberList(map);
	}

	@Override
	public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception {
		return memberDAO.selectMemberDetail(map);
	}

	@Override
	public void updateMember(Map<String, Object> map) throws Exception {
		memberDAO.updateMember(map);
	}

	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
		memberDAO.deleteMember(map);
	}

	// 회원 아이디 검색
	@Override
	public List<Map<String, Object>> searchMemberList0(Map<String, Object> map, int onOff, String isSearch) throws Exception {
		return memberDAO.searchMemberList0(map, onOff, "%" + isSearch + "%");
	}

	// 회원 이름 검색
	@Override
	public List<Map<String, Object>> searchMemberList1(Map<String, Object> map, int onOff, String isSearch) throws Exception {
		return memberDAO.searchMemberList1(map, onOff, "%" + isSearch + "%");
	}

	// 회원 전화번호 검색
	@Override
	public List<Map<String, Object>> searchMemberList2(Map<String, Object> map, int onOff, String isSearch) throws Exception {
		return memberDAO.searchMemberList2(map, onOff, "%" + isSearch + "%");
	}

	// 회원 이메일 검색
	@Override
	public List<Map<String, Object>> searchMemberList3(Map<String, Object> map, int onOff, String isSearch) throws Exception {
		return memberDAO.searchMemberList3(map, onOff, "%" + isSearch + "%");
	}

}