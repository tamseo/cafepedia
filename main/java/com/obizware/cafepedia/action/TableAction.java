package com.obizware.cafepedia.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.obizware.cafepedia.model.Table;
import com.obizware.cafepedia.service.TableService;
import com.opensymphony.xwork2.ModelDriven;

public class TableAction implements ModelDriven<Object> 
{
	private Table table;

	private List<Table> tableList;
	
	@Autowired
	private TableService tableService;
	
	public void setTableService(TableService tableService)
	{
		this.tableService = tableService;
	}
	
	public Object getModel()
	{
		return table;
	}
	
	public String addTable() throws Exception
	{
		tableService.addTable(table);
		tableList = tableService.listTable();
		return  "success";
	}
	
	public String listTable() throws Exception
	{
		tableList = tableService.listTable();
		return "success";
	}
	
	public Table getTable() {
		return table;
	}

	public void setTable(Table table) {
		this.table = table;
	}
	
	public List<Table> getTableList()
	{
		return tableList;
	}
	
	public void setTableList(List<Table> tableList)
	{
		this.tableList = tableList;
	}
 
}
