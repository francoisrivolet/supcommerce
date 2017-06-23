package fr.imie.supcommerce.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import fr.imie.supcommerce.dao.ProductDao;
import fr.imie.supcommerce.entity.Product;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/listProduct")
public class ListProductServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> pList = ProductDao.getAllProducts();
		req.setAttribute("products", pList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/listProduct.jsp");
		rd.forward(req, resp);
	}
}
