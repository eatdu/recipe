package kr.co.foody.recipe;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/config/servlet-context.xml")
@Log4j
public class RecipeMapperTests {

	@Autowired
	RecipeMapper mapper;
	
	@Test
	public void selectRcpListTest() {
		Map cri = new HashMap();
		String[] keywordArr = {"당근", "감자"};
		int[] allergyArr = {0};
		int[] ingreCateArr = {1,2,3,4,5,6};
		int[] rcpCateArr = {1};
		//cri.put("keywordArr", keywordArr);
		cri.put("allergyArr", allergyArr);
		//cri.put("ingreCateArr", ingreCateArr);
		cri.put("rcpCateArr", rcpCateArr);
		
		log.info(mapper.selectRecipeListWithCri(cri));
	}
	
	
}
