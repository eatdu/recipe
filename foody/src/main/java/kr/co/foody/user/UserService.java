package kr.co.foody.user;

import javax.servlet.http.HttpSession;

public interface UserService {

	UserVO selectOne(int no);
	int emailDupCheck(String email);
	int nik_nameDupCheck(String nik_name);
	int telDupCheck(String tel);
	int insert(UserVO vo);
	boolean loginCheck(UserVO vo, HttpSession sess);
	UserVO findEmail(UserVO vo);
	UserVO findPwd(UserVO vo);
}
