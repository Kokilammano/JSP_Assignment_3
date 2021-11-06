<%@page import="com.app.empdao.EmployeeDao"%>
<%@page import="com.app.emp.Employee" %>

<jsp:useBean id="c" class="com.app.emp.Employee"></jsp:useBean>
<jsp:setProperty name="c" property="*"/>



<%
	int result=EmployeeDao.saveEmployee(c);
	if(result>0){
		response.sendRedirect("success.jsp");
	}
	else{
		response.sendRedirect("failure.jsp");
	}
%>