package shop.mtcoding.buyer2.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

import shop.mtcoding.buyer2.model.User;
import shop.mtcoding.buyer2.model.UserRepository;

@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HttpSession session;

    @GetMapping("/updateForm/{id}")
    public String updateForm(@PathVariable int id) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/loginForm";
        }
        if (principal.getId() != id) {
            return "redirect:/loginForm";
        }
        return "user/updateForm";
    }

    @PostMapping("/update")
    public String update(String username, String password, String email) {
        User principal = (User) session.getAttribute("principal");
        int result = userRepository.updateById(principal.getId(), username, password, email);
        if (result == 1) {
            return "redirect:/board";
        } else {
            return "redirect:/updateForm";
        }
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/loginForm";
    }

    @GetMapping("/loginForm")
    public String loginForm() {
        return "user/loginForm";
    }

    @PostMapping("/login")
    public String login(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user == null) {
            return "redirect:/loginForm";
        } else {
            session.setAttribute("principal", user);
            return "redirect:/board";
        }
    }

    @GetMapping("/joinForm")
    public String joinform() {
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email) {
        int result = userRepository.insert(username, password, email);
        if (result == 1) {
            return "redirect:/loginForm";
        } else {
            return "redirect:/joinForm";
        }
    }
}