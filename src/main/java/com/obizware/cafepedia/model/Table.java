package com.obizware.cafepedia.model;

@org.hibernate.annotations.Table(appliesTo="new_table")
public class Table implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private Integer tableId;
	private String tableName;
	private String tableStatus;
	private String tableDesc;
	
	public Integer getTableId() {
		return tableId;
	}
	public void setTableId(Integer tableid) {
		this.tableId = tableid;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tablename) {
		this.tableName = tablename;
	}
	public String getTableStatus() {
		return tableStatus;
	}
	public void setTableStatus(String tablestatus) {
		this.tableStatus = tablestatus;
	}
	public String getTableDesc() {
		return tableDesc;
	}
	public void setTableDesc(String tableDesc) {
		this.tableDesc = tableDesc;
	}

}
