<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Day 8</title>
</head>

<body>

<cfif URL.action eq "blog">
	<cfinclude template="controllers/blogController.cfm">
</cfif>

</body>
</html>
