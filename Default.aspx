<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Asp.Net.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <span class="auto-style1">Задания:</span><br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style2">Просмотр документов</asp:LinkButton>
            <br />


        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
