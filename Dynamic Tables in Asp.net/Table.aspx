<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Table.aspx.cs" Inherits="Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div>
<asp:Label ID="Label1" runat="server" Text="Select Rows : "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="r" runat="server" Height="16px" Width="126px" OnSelectedIndexChanged="r_SelectedIndexChanged">
<asp:ListItem Value="0">Select Rows</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Select Columns : "></asp:Label> &nbsp;
<asp:DropDownList ID="c" runat="server" Height="16px" Width="123px">
<asp:ListItem Value="0">Select Columns</asp:ListItem>
<asp:ListItem>1</asp:ListItem>
<asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
<asp:ListItem>4</asp:ListItem>
<asp:ListItem>5</asp:ListItem>
</asp:DropDownList>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Select GridLines : "></asp:Label>
<asp:DropDownList ID="gridli" runat="server" Height="16px" Width="131px">
<asp:ListItem Value="0">Select Grid Lines</asp:ListItem>
<asp:ListItem Value="1">Horizontal</asp:ListItem>
<asp:ListItem Value="2">Vertical</asp:ListItem>
<asp:ListItem Value="3">Both</asp:ListItem>
</asp:DropDownList>
<br />
<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Draw Table" />
<br />
<br />
<asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
</div>
</form>
 
</body>
</html>
