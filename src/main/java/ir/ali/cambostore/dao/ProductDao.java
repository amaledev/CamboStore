package ir.ali.cambostore.dao;

import ir.ali.cambostore.model.Product;

import java.util.List;

public interface ProductDao {
    void addProduct(Product product);
    Product getProductById(int id);
    List<Product> grtAllProducts();
    void deleteProduct(int id);

}
