package com.irecipe.irecipe.controllers;

import com.irecipe.irecipe.models.User;
import com.irecipe.irecipe.services.IRecipeService;
import com.irecipe.irecipe.services.UserService;
import com.irecipe.irecipe.validator.UserValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Principal;

@Controller
public class UsersController {
    private UserService userService;
    private IRecipeService irecipeService;
    private UserValidator userValidator;

    public UsersController(UserService userService, IRecipeService irecipeService,UserValidator userValidator) {
        this.userService = userService;
        this.userValidator=userValidator;
        this.irecipeService=irecipeService;
    }

    @RequestMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user,HttpSession session) {
        return "registrationPage.jsp";
    }

    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,HttpSession session) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "registrationPage.jsp";
        }

        userService.saveWithUserRole(user);
        return "redirect:/login";
    }

    @RequestMapping("/admin")
    public String adminPage(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        model.addAttribute("recipes", irecipeService.findAllR());
        return "adminPage.jsp";
    }


    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model,HttpSession session) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "loginPage.jsp";
    }
    @RequestMapping(value = {"/home"})
    public String home(Principal principal, Model model,HttpSession session) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        User user1=userService.findByUsername(username);
        session.setAttribute("userId", user1.getId());

        return "homePage.jsp";
    }

}

