<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Manage Food</title>
    <style type="text/css">
    	#displayImg>img{
    		width: 200px;
    		height:200px;
    		border: solid;
    	}
    </style>
  </head>
  <body>
  	<center><h1>Manage Food</h1></center>
    <main class="container">
    	<div class="row">
    		<div class="col">
    			<c:if test="${not empty message}">
    				<div class="alert alert-success"> <c:out value="${message}"></c:out> </div>
    			</c:if>
    			<c:if test="${not empty error}">
    				<div class="alert alert-danger"><c:out value="${error}"></c:out> </div>
    			</c:if>
    		</div>
    	</div>
    	<div class="row">
    		<div class="col">
    			<form action="<c:url value="Manage/ManageFood"></c:url>" enctype="multipart/form-data" method="post">
	    			<div class="form-group">
	    				<label for="id">Food ID:</label>
	    				<input type="number" name ="id" class="form-control" value="${food.id}"/>
	    			</div>
	    			<div class="form-group">
	    				<label for="name">Food Name:</label>
	    				<input type="text" class="form-control" name="name" id="name" value="${food.name}" />
	    			</div>
	    			<div class="form-group">
	    				<label for="price">Price: </label>
	    				<input type="number" class="form-control" name="price" id="price" value="${food.price}" />
	    			</div>
	    			<div class="form-group">
	    				<label for="description">Description: </label>
	    				<input type="text" class="form-control" name="description" id="description" value="${food.description}"/>
	    			</div>
	    			<div class="form-group">
	    				<label >Type Of Food: </label>
		    			<div class="form-check form-check-inline">
		    				<input type="radio" checked="checked" class="form-check-input" 
		    				value="dried" name="foodType" id="dried"  ${food.foodType.equals("drived")? 'checked':'' }/>
		    				<label class="form-check-label" for="dried">Dried</label>
		    			</div>
		    			<div class="form-check form-check-inline">
		    				<input type="radio" class="form-check-input" 
		    				value="soup" name="foodType" id="soup"  ${food.foodType.equals("soup")? 'checked':'' }/>
		    				<label class="form-check-label" for="soup">Soup</label>
		    			</div>
		    			<div class="form-check form-check-inline">
		    				<input type="radio" class="form-check-input" 
		    				value="bakery"  name="foodType" id="bakery" ${food.foodType.equals("bakery")? 'checked':'' }/>
		    				<label class="form-check-label" for="bakery">Bakery</label>
		    			</div>
		    		</div>
		    		<input type="hidden" value="insert" name="image" />
		    		<div class="form-group">
		    			<label for="upload">Image: </label>
	    				<input type="file" class="form-control" name="upload" id="upload" onchange="ImagesFileAsURL()"/>
		    		</div>
		    		<br />
			        <div id="displayImg">
			        	<c:if test="${not empty food}">
			        		<img alt="Image" src="data:image/png;base64,${food.GetStringImage()}">
			        	</c:if>
			        </div>
			        <script type="text/javascript">
			            function ImagesFileAsURL() {
			                var fileSelected = document.getElementById('upload').files;
			                if (fileSelected.length > 0) {
			                    var fileToLoad = fileSelected[0];
			                    var fileReader = new FileReader();
			                    fileReader.onload = function(fileLoaderEvent) {
			                        var srcData = fileLoaderEvent.target.result;
			                        var newImage = document.createElement('img');
			                        newImage.src = srcData;
			                        document.getElementById('displayImg').innerHTML = newImage.outerHTML;
			                    }
			                    fileReader.readAsDataURL(fileToLoad);
			                }
			            }
			        </script>
					<br />
					<div class="form-group">
						<button class="btn btn-primary" formaction="<c:url value='/Manage/ManageFood/create'></c:url>">Create</button>
						<button class="btn btn-warning" formaction="<c:url value='/Manage/ManageFood/update'></c:url>">Update</button>
						<button class="btn btn-danger" formaction="<c:url value='/Manage/ManageFood/delete'></c:url>">Delete</button>
						<button class="btn btn-info" formaction="<c:url value='/Manage/ManageFood/reset'></c:url>">Reset</button>
					</div>
    			</form>
    		</div>
    	</div>
    	<hr />
		<div class="row">
			<div class="col">
				<table class="table table-stripe">
					<tr>
						<th width="8%">Food ID</th>
						<th>Food Name</th>
						<th>Food Type</th>
						<th>Price</th>
						<th>Image</th>
						<th>&nbsp;</th>
					</tr>
					<c:forEach var="item" items="${foods}">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.foodType}</td>
						<td>${item.price}</td>
						<td><img src="data:image/png;base64,${item.GetStringImage()}" width="80px" height="80px" alt="Image" /></td>
						<td>
							<a href="<c:url value='/ManageFood/edit?foodID=${item.id}'></c:url>">Edit</a>
							<a href="<c:url value='/ManageFood/delete?foodID=${item.id}'></c:url>">Delete</a>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
    </main>
 	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  </body>
</html>