<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Enter UserName :"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="222px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="231px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
&nbsp;
        <p>
&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Confirm_Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="231px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Width="231px"></asp:TextBox>
        </p>
        <p style="margin-left: 80px">
            <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="231px" TextMode="Number" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            &nbsp;&nbsp; </p>
        <p style="margin-left: 80px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </p>
        <p style="margin-left: 80px">
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server"  Text="login" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
