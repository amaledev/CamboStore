package ir.ali.cambostore.dao;

import ir.ali.cambostore.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    Product product = new Product();

    private List<Product> productList;

    public List<Product> getProductList(){
        Product product1 = new Product();
        product1.setProductName("iphone7plus");
        product1.setProductCategory("iphone");
        product1.setProductPrice(1200.0);
        product1.setProductDescription("This is the new iphone 7 plus");
        product1.setProductCondition("New Arrival");
        product1.setProductStatus("Active");
        product1.setUnitInStock(20);
        product1.setProductManufacturer("Apple");

        Product product2 = new Product();
        product2.setProductName("iphone7plus");
        product2.setProductCategory("iphone");
        product2.setProductPrice(1200.0);
        product2.setProductDescription("This is the new iphone 7 plus");
        product2.setProductCondition("New Arrival");
        product2.setProductStatus("Active");
        product2.setUnitInStock(20);
        product2.setProductManufacturer("Apple");

        Product product3 = new Product();
        product3.setProductName("Samsung Galaxy s6");
        product3.setProductCategory("Samsung");
        product3.setProductPrice(1200.0);
        product3.setProductDescription("This is the new Samsung Galaxy");
        product3.setProductCondition("New Arrival");
        product3.setProductStatus("Active");
        product3.setUnitInStock(20);
        product3.setProductManufacturer("Samsung");

        Product product4 = new Product();
        product4.setProductName("LG G6");
        product4.setProductCategory("LG");
        product4.setProductPrice(1000.0);
        product4.setProductDescription("This is the new LG");
        product4.setProductCondition("New Arrival");
        product4.setProductStatus("Active");
        product4.setUnitInStock(20);
        product4.setProductManufacturer("LG");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);
        productList.add(product4);
        return productList;
    }


}
