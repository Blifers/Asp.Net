<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondTask.aspx.cs" Inherits="Asp.Net.SecondTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <span class="auto-style1"><strong>Документ &quot;Продажа&quot;<br />
            </strong></span>
            <br />
            <asp:Label ID="ChequeLabel" runat="server" Text="Номер чека - "></asp:Label>
            <asp:Label ID="ChequeNumberLabel" runat="server" Text="1"></asp:Label>
            <br />
            <br />
            <asp:Label ID="DateLabel" runat="server" Text="Дата продажи - "></asp:Label>
            <br />
            <br />
            <asp:Label ID="DiscountCardLabel" runat="server" Text="Номер дисконтной карты - "></asp:Label>
            <br />
            <br />
            <asp:Label ID="ChequeSumLabel" runat="server" Text="Сумма чека - "></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Состав чека</span><br />
&nbsp;<asp:GridView ID="BodyGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Номер_Продажи,Код_Товара" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Номер_Продажи" HeaderText="Номер_Продажи" ReadOnly="True" SortExpression="Номер_Продажи" />
                <asp:BoundField DataField="Код_Товара" HeaderText="Код_Товара" ReadOnly="True" SortExpression="Код_Товара" />
                <asp:BoundField DataField="Количество" HeaderText="Количество" SortExpression="Количество" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookWorldDataBaseConnectionString %>" SelectCommand="SELECT * FROM [Состав_Продажи] WHERE ([Номер_Продажи] = @Номер_Продажи)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ChequeNumberLabel" Name="Номер_Продажи" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <asp:LinkButton ID="BackLinkButton" runat="server" OnClick="BackLinkButton_Click">Вернуться назад</asp:LinkButton>
        </div>
    </form>
</body>
</html>
