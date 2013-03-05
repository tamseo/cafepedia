package com.obizware.cafepedia.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obizware.cafepedia.dao.TableDAO;
import com.obizware.cafepedia.model.Table;
import com.obizware.cafepedia.service.TableService;

@Service
public class TableServiceImpl implements TableService {
	
	@Autowired
	private TableDAO tableDAO;
		
	public void setTableDAO(TableDAO tableDAO){
		this.tableDAO = tableDAO;
	}
	public void addTable(Table table){
		tableDAO.addTable(table);
	}
	public List<Table> listTable(){
		return tableDAO.listTable();
	}

}
