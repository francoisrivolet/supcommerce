package fr.imie.supcommerce.servlet;


import java.io.IOException;
import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.imie.supcommerce.entity.Category;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/auth/addCategory")
public class AddCategoryServlet extends HttpServlet {
	
	private EntityManagerFactory emf;
	
	@Override
	public void init() throws ServletException {
		this.emf = Persistence.createEntityManagerFactory("My-PU");
	}
	
	@Override
	public void destroy() {
		this.emf.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		Category category = new Category();
		category.setName(name);
		EntityManager em = this.emf.createEntityManager();
		EntityTransaction t = em.getTransaction();
		try {
			t.begin();
			em.persist(category);
			t.commit();
		} finally {
			if(t.isActive())
			{
				t.rollback();
			}
			em.close();
		}
		
		resp.getWriter().println("Category added");
		resp.sendRedirect(req.getContextPath()+"/listProduct");
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 req.getRequestDispatcher("/auth/addCategory.jsp").forward(req,resp);
	}
		
	
}
