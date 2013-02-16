package com.obizware.cafepedia.dao;

import java.util.List;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.obizware.cafepedia.model.Table;

@Component
@Transactional
public interface TableDAO {

	void addTable(Table table);

	List<Table> listTable();

}
