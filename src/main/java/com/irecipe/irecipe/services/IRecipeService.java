package com.irecipe.irecipe.services;

import com.irecipe.irecipe.models.Category;
import com.irecipe.irecipe.models.Comment;
import com.irecipe.irecipe.models.Favorite;
import com.irecipe.irecipe.models.Recipe;
import com.irecipe.irecipe.repositories.*;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class IRecipeService {
    private final CategoryRepository catRepo;
    private final CommentRepository commentRepo;
    private final FavoriteRepository favRepo;
    private final RecipeRepository recipeRepo;
    private final RoleRepository roleRepo;
    private final UserRepository userRepo;

    public IRecipeService(CategoryRepository catRepo, CommentRepository commentRepo, FavoriteRepository favRepo, RecipeRepository recipeRepo, RoleRepository roleRepo, UserRepository userRepo) {
        this.catRepo = catRepo;
        this.commentRepo = commentRepo;
        this.favRepo = favRepo;
        this.recipeRepo = recipeRepo;
        this.roleRepo = roleRepo;
        this.userRepo = userRepo;
    }

//create methods
    public Recipe createRecipe(Recipe recipe) {return recipeRepo.save(recipe);}
    public Comment createComment (Comment comment) {return commentRepo.save(comment);}
    public Favorite createFavorite (Favorite favorite) {return favRepo.save(favorite);}

//update methods
    public Recipe updateRecipe(Recipe recipe) {return recipeRepo.save(recipe);}

//delete methods
    public void deleteRecipe(Long id){recipeRepo.deleteById(id);}
    public void deleteFavorite(Long id) {favRepo.deleteById(id);}
    public void deleteComment(Long id) {commentRepo.deleteById(id);}

//find methods
    public List<Recipe> findAllR() {return recipeRepo.findAll();}
    public List<Category> findAllC() {return catRepo.findAll();}
    public Recipe findByIdR(Long id) {
        Optional<Recipe> optionalRecipe = recipeRepo.findById(id);
        if(optionalRecipe.isPresent()) {
            return optionalRecipe.get();
        } else {
            return null;
        }
    }
    public Category findByIdC(Long id) {
        Optional<Category> optionalCategory = catRepo.findById(id);
        if(optionalCategory.isPresent()) {
            return optionalCategory.get();
        } else {
            return null;
        }
    }
//find recpies in category
    public List<Recipe> findRecipeByCategory(Category category){ return recipeRepo.findByCategoryContains(category);}

}
