package spring.siroragi.join;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import spring.kh.siroragi.CommandMap;

public interface JoinService {

	// 회원가입 폼으로 이동
	// 회원가입시, ID중복체크 폼으로 이동

	// 회원가입시, ID중복체크

	// 회원정보를 DB에 등록(회원가입)
	void insertMember(Map<String, Object> map, HttpServletRequest request) throws Exception;
	// 회원비밀번호 확인하고 회원정보를 DB에서 OFF로 수정(회원탈퇴)
}
