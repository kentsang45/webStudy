<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ include file="../includes/header.jsp" %>

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800">Store List Page</h1>
    
    
<table class="table">
  <thead>
    <tr>
      <th scope="col">CODE</th>
      <th scope="col">NAME</th>
      <th scope="col">LAT</th>
      <th scope="col">LNG</th>
      <th scope="col">MENU</th>
      <th scope="col">REG DATE</th>
      <th scope="col">UPDATE DATE</th>
    </tr>
  </thead>
<tbody>

<!-- loop start -->
	<c:forEach items="${stores}" var="store">
	


    <tr>
      <td>${store.storeCode}</td>
      <td><a href = '/store/view?sno=${store.storeCode}'>${store.name}</a></td>
      <td>${store.lat}</td>
      <td>${store.lng}</td>
      <td>${store.menu}</td>
      <td>${store.regdate}</td>
      <td>${store.updatedate}</td>
    </tr>   

	
	</c:forEach>
<!-- loop end -->

	</tbody>
</table>

    
    
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-danger">Submit</button>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Back To List</button>
    </div>
  </div>
    
    
    	<!-- Page Footer -->
    
<%@ include file="../includes/footer.jsp" %>