package ir.ali.cambostore.controller;

import ir.ali.cambostore.dao.ProductDao;
import ir.ali.cambostore.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    ProductDao productDao = new ProductDao();

    @RequestMapping("/")
    public String home(Model model){
        List<Product> productList = productDao.getProductList();
        model.addAttribute("products", productList);
        return "home";
    }
}
