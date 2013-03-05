package com.obizware.cafepedia.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.obizware.cafepedia.dao.TableDAO;
import com.obizware.cafepedia.model.Table;

@Component
public class TableDAOImpl implements TableDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
	        this.sessionFactory = sessionFactory;
	    }
	
	public SessionFactory getSessionFactory() {
			return sessionFactory;
		}

	public void addTable(Table table){
		this.sessionFactory.getCurrentSession().save(table);
	}
	
	public List<Table> listTable(){
		@SuppressWarnings("unchecked")
		List<Table> list = this.sessionFactory.getCurrentSession()
                .createQuery("from Table").list();
		return list;
	}

}
