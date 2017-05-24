package spring.siroragi.myPage;

import java.util.Map;

public interface MyPageService {

	// 개인 정보 폼으로 이동

	// 개인 정보 수정
	void updateMyinfo(Map<String, Object> map) throws Exception;
	// 비밀번호 변경
	void changeMypassword(Map<String, Object> map) throws Exception;
	// 내정보 불러오기
	Map<String, Object> myinfoDetail(String id) throws Exception;
}
