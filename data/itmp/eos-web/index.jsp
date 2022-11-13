<%
//request.getRequestDispatcher("coframe/framework/index.jsp").forward(request, response);
response.sendRedirect(request.getContextPath() + "/coframe/framework/index.jsp");
%>