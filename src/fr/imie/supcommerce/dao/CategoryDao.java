package fr.imie.supcommerce.dao;

import java.util.ArrayList;
import java.util.List;

import fr.imie.supcommerce.entity.Category;

public class CategoryDao {
	
	private static ArrayList<Category> categories = new ArrayList<>();
	
	public static List<Category> getAllCategories() {
		return categories;
	}
	
	public static  void addCategory(Category c) {
		c.setId(new Long(categories.size()));
		categories.add(c);
	}

	public static Category findCategory(Long id) {
		for (Category c : categories) {
			if (c.getId().equals(id)) {
				return c;
			}
		}
		return null;
	}

	public static void removeCategory(Long id) {
		categories.remove(findCategory(id));
	}


}
