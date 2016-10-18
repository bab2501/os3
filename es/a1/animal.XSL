<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>All the Animal .XML</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<base href="https://course.blaauwgeers.pro/es/a1/"></base>
	<link href="https://course.blaauwgeers.pro/es/a1/animal.CSS" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<h1>Transformation froom XML to XHTML</h1>
	<table>
		<thead>
		<tr>
			<th class="eename">name</th>
			<th class="eecolor">color</th>
			<th class="eenoise">noise</th>
			<th class="eeneye">eye</th> 
		</tr>
		</thead>
<xsl:for-each select="animals/animal">
		<tr>
			<td class="eename"><xsl:value-of select="name"/></td>
			<td class="eecolor"><xsl:value-of select="color"/></td>
			<td class="eenoise"><xsl:value-of select="noise"/></td>
			<td class="eeneye"><xsl:value-of select="eye"/></td>
		</tr>
</xsl:for-each>
	</table>
</body>
</html>