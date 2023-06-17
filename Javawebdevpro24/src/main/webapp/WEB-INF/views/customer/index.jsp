
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML5 Input Form Elements -->
<input id="fileupload" type="file" name="fileupload" /> 
<button id="upload-button" onclick="uploadFile()"> Upload </button>

<!-- Ajax JavaScript File Upload to Spring Boot Logic -->
<script>
async function uploadFile() {
  let formData = new FormData(); 
  formData.append("file", fileupload.files[0]);
  let response = await fetch('/index', {
    method: "POST", 
    body: formData
  }); 

  if (response.status == 200) {
    alert("File successfully uploaded.");
  }
}
</script>
</body>
</html>