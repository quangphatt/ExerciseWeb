package com.GetDB;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.hibernate.Hibernate;

public class MyDB {
	private static EntityManagerFactory factory = Persistence.createEntityManagerFactory("FinalProject");
	
	public MyDB() {
		
	}
	public static EntityManager getEntityManager() {
		return factory.createEntityManager();
	}
}
