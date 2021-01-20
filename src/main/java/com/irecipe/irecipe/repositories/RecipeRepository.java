package com.irecipe.irecipe.repositories;

import com.irecipe.irecipe.models.Category;
import com.irecipe.irecipe.models.Recipe;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecipeRepository extends CrudRepository<Recipe, Long> {
    List<Recipe> findAll();
    Recipe findByName(String name);
    List<Recipe> findByCategoryContains(Category category);

}
