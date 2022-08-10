package kr.co.foody.recipe;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecipeMapper {

	int insert(RecipeVO vo);

	List<IngredientVO> selectIngreList(int no);
	List<RecipeVO> selectRecipeListWithCri(Map map);

	List<String> selectIngreNameList(int no);

	List<RecipeVO> selectAll();
	List<RecipeVO> selectIngreOrKey(Map cri);
	List<RecipeVO> selectR(Map cri);

}
