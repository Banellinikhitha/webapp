package task.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import task.dto.Register;




public class RegisterCrud {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("radha");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public Register saveUser(Register user)  {
		et.begin();
		em.persist(user);
		et.commit();
		return user;
	}
	public List<Register> fetchAllUsers() {
		Query query = em.createQuery("select a from Register a");
		return query.getResultList();

	}



}
