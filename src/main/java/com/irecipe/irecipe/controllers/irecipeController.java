package com.irecipe.irecipe.controllers;

import com.irecipe.irecipe.models.Category;
import com.irecipe.irecipe.models.Recipe;
import com.irecipe.irecipe.services.IRecipeService;
import com.irecipe.irecipe.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
public class irecipeController {
    private IRecipeService irecipeService ;
    private UserService userService;

    public irecipeController(IRecipeService irecipeService, UserService userService) {
        this.irecipeService = irecipeService;
        this.userService = userService;
    }

    @RequestMapping("/recipes/create")
    public String newRecipe(@ModelAttribute("recipe") Recipe recipe,Model model) {
        model.addAttribute("categories", irecipeService.findAllC());
        return "/createRecipe.jsp";
    }

    @RequestMapping(value = "/recipes",method = RequestMethod.POST)
    public String createRecipe(@Valid @ModelAttribute("recipe") Recipe recipe, BindingResult result,Model model) {
        if(result.hasErrors()) {
            model.addAttribute("categories", irecipeService.findAllC());
            return "createRecipe.jsp";
        } else {
            this.irecipeService.createRecipe(recipe);

            return "createRecipe.jsp";
        }
    }

    @RequestMapping("/categories/{id}")
    public String categories(@PathVariable("id") Long id, Model model,@ModelAttribute("category") Category category) {
        Category category1 = irecipeService.findByIdC(id);
        model.addAttribute("category", category1);
        return ("categoryRecipes.jsp");
    }


}
