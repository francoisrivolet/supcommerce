package fr.imie.supcommerce.entity;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Category {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private	Long id;
	
	private String name;
	
	
	@OneToMany(mappedBy="category")
	private Collection<Product> products;
	
	public Category() {
	}
	
	public Category(ArrayList<String> values) {
        this(values.get(0));
    }
	
	public Category(String name) {
		this.name = name;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}
	
}
