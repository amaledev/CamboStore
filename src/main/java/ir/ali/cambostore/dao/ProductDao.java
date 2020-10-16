package ir.ali.cambostore.dao;

import ir.ali.cambostore.model.Product;

import java.util.List;

public interface ProductDao {
    void addProduct(Product product);
    Product getProductById(String id);
    List<Product> grtAllProducts();
    void deleteProduct(String id);

}
