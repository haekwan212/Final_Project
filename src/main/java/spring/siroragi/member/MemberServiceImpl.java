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
	public List<Map<String, Object>> searchMemberId(Map<String, Object> map) throws Exception {
		return memberDAO.searchMemberId(map);
	}

	// 회원 이름 검색
	@Override
	public List<Map<String, Object>> searchMemberName(Map<String, Object> map) throws Exception {
		return memberDAO.searchMemberName(map);
	}

	// 회원 전화번호 검색
	@Override
	public List<Map<String, Object>> searchMemberPhone(Map<String, Object> map) throws Exception {
		return memberDAO.searchMemberPhone(map);
	}

	// 회원 이메일 검색
	@Override
	public List<Map<String, Object>> searchMemberEmail(Map<String, Object> map) throws Exception {
		return memberDAO.searchMemberEmail(map);
	}

	// 회원포인트 수정
	@Override
	public void updatePoint(Map<String, Object> map) throws Exception {
		memberDAO.updatePoint(map);

	}

}