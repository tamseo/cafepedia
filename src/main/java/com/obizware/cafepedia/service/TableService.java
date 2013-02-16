package com.obizware.cafepedia.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.obizware.cafepedia.model.Table;

@Transactional
public interface TableService {
	
	void addTable(Table table);
	List<Table> listTable();

}
