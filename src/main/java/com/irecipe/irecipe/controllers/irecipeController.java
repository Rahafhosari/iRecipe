package com.irecipe.irecipe.controllers;

import com.irecipe.irecipe.models.Category;
import com.irecipe.irecipe.models.Comment;
import com.irecipe.irecipe.models.Recipe;
import com.irecipe.irecipe.models.User;
import com.irecipe.irecipe.services.IRecipeService;
import com.irecipe.irecipe.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class irecipeController {
    private IRecipeService irecipeService;
    private UserService userService;

    public irecipeController(UserService userService, IRecipeService irecipeService) {
        this.userService = userService;
        this.irecipeService=irecipeService;
    }


    @RequestMapping("/recipes/create")
    public String newRecipe(@ModelAttribute("recipe") Recipe recipe,Model model,HttpSession session) {
        model.addAttribute("categories", irecipeService.findAllC());
        return "/createRecipe.jsp";
    }

    @RequestMapping(value = "/recipes",method = RequestMethod.POST)
    public String createShow(@Valid @ModelAttribute("recipe") Recipe recipe, BindingResult result,Model model) {
        if(result.hasErrors()) {
            model.addAttribute("categories", irecipeService.findAllC());
            return "createRecipe.jsp";
        } else {
            this.irecipeService.createRecipe(recipe);

            return "createRecipe.jsp";
        }
    }

    @RequestMapping("/categories/{id}")
    public String categories(@PathVariable("id") Long id, Model model,@ModelAttribute("category") Category category,HttpSession session) {
        Category category1 = irecipeService.findCategory(id);
        model.addAttribute("category", category1);
//        List<Recipe> recipesInCategory = irecipeService.findRecipeByCategory(category1);
//        model.addAttribute("recipes",recipesInCategory);
        return ("categoryRecipe.jsp");
    }

    @RequestMapping("/recipes/{id}")
    public String showrecipe(@PathVariable("id") Long id, Model model, HttpSession session, @ModelAttribute("comm") Comment comment) {
        Long userId = (Long) session.getAttribute("userId");
        model.addAttribute("recipe", this.irecipeService.findByIdR(id));
        Recipe recipe1=this.irecipeService.findByIdR(id);
        List <Comment> comments=recipe1.getComment();
        User u = irecipeService.findUserById(userId);
        model.addAttribute("user", u);
        model.addAttribute("comments", comments);
        return "showRecipe.jsp";
    }

    @PostMapping("/addComment")
    public String addComment(@ModelAttribute("comm") Comment comment, Model model, HttpSession session) {
        User user = irecipeService.findUserById((Long) session.getAttribute("userId"));
        model.addAttribute("user", user);
        irecipeService.createComment(comment);
        return "redirect:/home";

    }

    //Method to favorite a Recipe

    @GetMapping(value="/recipes/{id}/fav")
    public String addfav(@PathVariable("id")Long id, HttpSession session) {
        User attendee = irecipeService.findUserById((Long) session.getAttribute("userId"));
        Recipe rec = irecipeService.findByIdR(id);
        List<User> attendees = rec.getUser();
        attendees.add(attendee);
        rec.setUser(attendees);
        irecipeService.updateUser(attendee);
        return "redirect:/";
    }

    @GetMapping("/")
    public String main() {
        return "homePage.jsp";
    }

//Methods for Edit and Update Recipe by the Admin

    @RequestMapping("/recipes/update/{id}")
    public String editEvent(@PathVariable("id") Long id, Model model) {
        Recipe recipe = irecipeService.findByIdR(id);
        model.addAttribute("recipe", recipe);
        return "editRecipe.jsp";
    }

    @PutMapping("/recipes/{id}/update")
    public String updateEvent(Model model, @PathVariable("id")Long id, @Valid @ModelAttribute("recipe") Recipe recipe, BindingResult result) {
        if (result.hasErrors()) {
            return "editRecipe.jsp";
        } else {
            this.irecipeService.updateRecipe(recipe);
            return "redirect:/recipes/"+recipe.getId();
        }}

    //Method to delete a Recipe by the Admin
    @RequestMapping("/recipes/{id}/delete")
    public String deleteEvent(@PathVariable("id") Long id) {
        irecipeService.deleteRecipe(id);
        return "redirect:/admin";
    }

    @RequestMapping("/users/{id}")
    public String userpage(@PathVariable("id") Long id, Model model, HttpSession session) {
        User user1 = irecipeService.findUserById((Long) session.getAttribute("userId"));
        List<Recipe> recipes = user1.getRecipe();
        model.addAttribute("user",user1);
        model.addAttribute("recipes",recipes);
        return "userPage.jsp";
    }

    @RequestMapping("/test")
    public String test () {
        return "categorytest.jsp";
    }

    @RequestMapping("/api")
    public String api(){
        return "spoonacular.jsp";
    }

    @RequestMapping("/about")
    public String about (HttpSession session, Model model) {
        Long userId = (Long) session.getAttribute("userId");
        User u = irecipeService.findUserById(userId);
        model.addAttribute("user", u);
        return "aboutUs.jsp";}
}
