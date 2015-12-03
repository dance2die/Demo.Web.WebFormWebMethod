<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Web.WebFormWebMethod.WebForms.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<div id="result"></div>
		</div>
	</form>
	
	<script src="Scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		$.ajax({
			type: "GET",
			url: "Default.aspx/GetData",
			contentType: "application/json; charset=utf-8",
			dataType: "json",
			success: function(result) {
				var d = $.parseJSON(result.d);
				$("#result").text(d.data);
			},
			error: function(error) {
				alert(error);
			}
		});
	</script>
</body>
</html>
