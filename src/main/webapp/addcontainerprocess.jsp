<jsp:useBean id="c" class="com.bean.Container"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

    
 <%@page import="com.dao.*, com.bean.Container, java.util.*" %>

<% 
int i = AppDao.addContainer(c);

if(i != 0){
	
	response.sendRedirect("viewcontainer.jsp");
	
	
} else {
	
	response.sendRedirect("addformcontainer.jsp");
	
}

%>

