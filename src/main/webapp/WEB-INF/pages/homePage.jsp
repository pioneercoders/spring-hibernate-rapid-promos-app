<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<script>
		var loadFile = function(event) {
			var output = document.getElementById('output');
			output.src = URL.createObjectURL(event.target.files[0]);
			//alert(output.value);
		};
		
		
		window.fbAsyncInit = function() {
			FB.init({
				appId : '931370890250419',
				xfbml : true,
				version : 'v2.5'
			});
		};

		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		FB.ui({
			method : 'share',
			href : 'https://developers.facebook.com/docs/',
		}, function(response) {
			
		});
	
	
	</script>
</head>
<body>
	<div align="center">
		<form:form action="uploadFile.mmm" method="post" enctype="multipart/form-data" modelAttribute="uploadDto">
			<input type="file" name= "file" value="Upload File"> 
			<input type="submit" value="SubmitFile">
		</form:form>
	</div>
	
	<div>
		<form:form action="uploadStatus.mmm" method="post" enctype="multipart/form-data" modelAttribute="uploadStatus">
		<table>
			<tr><td><textarea rows="5" cols="50" name="status"></textarea></td></tr>
			<tr><td><input type="file" name="file" accept="image/*" onchange="loadFile(event)" align="left" value="UploadPhoto"></td></tr>
			<tr><td><img id="output" height="100" width="100" align="left"/></td></tr>
		</table>
		<input type="submit" value="Submit"/>
	</form:form>
	</div>
	
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5&appId=931370890250419";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<div class="fb-comments" data-href="https://www.facebook.com/profile.php?id=100011092546947" data-numposts="10"></div>

</body>
</html>