<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cafepedia</title>
    </head>
    <body>
        
        <h1>Struts 2 + Spring + Hibernate</h1>
 
<h2>Add Table</h2>
<s:form action="addTableAction" >
  <s:textfield name="table.tableName" label="Table name" value="" />
  <s:textfield name="table.tableStatus" label="Table status" value="" />
  <s:submit />
</s:form>
 
<h2>All Table</h2>
 
<s:if test="tableList.size() > 0">
<table border="1px" cellpadding="8px">
	<tr>
		<th>Table ID</th>
		<th>Table Name</th>
		<th>Table Status</th>
	</tr>
	<s:iterator value="tableList" status="tableStatus">
		<tr>
			<td><s:property value="tableId" /></td>
			<td><s:property value="tableName" /></td>
			<td><s:property value="tableStatus" /></td>
		</tr>
	</s:iterator>
</table>
</s:if>
<br/>
<br/>

    </body>
</html>
