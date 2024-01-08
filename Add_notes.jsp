<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
 <%@include file="all_css.jsp"%>
</head>
<body>
 <div class="container-fluid">
   <%@include file="navbar.jsp"%>
   <br>
   <h1>Please fill your details</h1>
   
   <!-- This is add form -->
   
   <form action="SaveNote" method=post>
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title">
   
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required id="content" name="content" placeholder="enter your content here" class="form-control" style="height:200px"></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
</body>
</html>