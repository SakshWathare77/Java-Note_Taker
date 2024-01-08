<%@page import="org.hibernate.Query" %>

<%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@include file="all_css.jsp"%>
 
</head>
<body>
 <div class="container-fluid">
   <%@include file="navbar.jsp"%>
    <br>
   <h1>Edit your notes</h1>
   <br>
   <%
   int noteId = Integer.parseInt(request.getParameter("note_id").trim());
   Session s = FactoryProvider.getFactory().openSession();
	
	Note note = (Note)s.get(Note.class,noteId);
	
   %>
      <form action="Update" method="post">
      <inpute value="<%=note.getId()%>"name="noteId" type="hidden">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title" value="<%=note.getTitle()%>">
   
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required id="content" name="content" placeholder="enter your content here" class="form-control" style="height:200px;" <%=note.getContent() %>></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-purple">Save note</button>
  </div>
</form>
   </div>
</body>
</html>