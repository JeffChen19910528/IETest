<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="IETest.Index" %>

<%= Request["docType"]=="Y"?"<!DOCTYPE html>":"" %>
 
<html>
<head>
    <title></title>
<%= !String.IsNullOrEmpty(Request["ie"])?
    "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=" + Request["ie"] + "\">" : "" %>
</head>
<body>
  <div id="vbTest">VBScript is dead!</div>
  <script type="text/vbscript">
    If IsNumeric(123) Then 
        document.getElementById("vbTest").InnerText = "VBScript is alive!"
    End If
  </script>
  <div style="background: #cf0000;background: #007f00;border-radius: 12px;padding: 12px;width: 400px; color: yellow">
  <ul>
    <li>In quirks mode this box is green.</li>
    <li>In IE9 mode, it's red.</li>
    <li>In quicks mode emulation, it's green but still rounded.</li>
  </ul>
  </div>
  <script type="text/javascript">
  document.write(navigator.userAgent);
  </script>
</body>
</html>
