package ir.ali.cambostore.dao.impl;

import ir.ali.cambostore.dao.ProductDao;
import ir.ali.cambostore.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addProduct(Product product) {
        Session session =sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    @Override
    public Product getProductById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class,id);
        return product;
    }

    @Override
    public List<Product> grtAllProducts() {
        Session session = sessionFactory.getCurrentSession();
        Query<Product> theQuery =
                session.createQuery("from Product ");
        List<Product> products = theQuery.list();
        session.flush();
        return products;
    }

    @Override
    public void deleteProduct(int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }
}
