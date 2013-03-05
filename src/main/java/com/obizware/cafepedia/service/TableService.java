package com.obizware.cafepedia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.obizware.cafepedia.model.Table;

@Service
@Transactional
public interface TableService {
	
	void addTable(Table table);
	List<Table> listTable();

}
