<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calc.aspx.cs" Inherits="calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script runat="server">
protected void BTN_CLK(object sender, CommandEventArgs e)
{
int a,b;
a = Convert.ToInt32(first.Text);
b = Convert.ToInt32(second.Text);
switch (e.CommandArgument.ToString())
{
case "+": Label5.Visible = false; Label1.Text = Convert.ToString(a+b); break;
case "-": Label5.Visible = false; Label1.Text=Convert.ToString(a-b); break;
case "*": Label5.Visible = false; Label1.Text=Convert.ToString(a*b); break;
case "/": if (b == 0)
{
Label1.Visible = false; Label5.Visible = true;
Label5.Text="Can Not Divide By Zero..."; break;
}
else
{
Label5.Visible = false;
Label1.Text = Convert.ToString(Convert.ToDouble(first.Text)/Convert.ToDouble(second.Text)); break;
}
}
}
</script>

</head>
<body>
   <form id="form1" runat="server">
<div style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 151px; width: 1025px">
<asp:Label ID="Label2" runat="server" Text="Enter First Number : " style="z-index: 1; left: 2px; top: 10px; position: absolute"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="first" runat="server" style="z-index: 1; left: 166px; top: 4px; position: absolute; height: 24px"></asp:TextBox>
<br />
<br />
 
<asp:TextBox ID="second" runat="server" style="z-index: 1; left: 168px; top: 43px; position: absolute; right: 729px; height: 21px;"></asp:TextBox>
<asp:Label ID="Label3" runat="server" Text="Enter Second Number : " style="z-index: 1; left: 0px; top: 43px; position: absolute"></asp:Label>
<br />
<br />
<asp:Label ID="Label1" runat="server" style="z-index: 1; left: 87px; top: 77px; position: absolute"></asp:Label>
<asp:Label ID="Label4" runat="server" Text="Answer : "></asp:Label>
<asp:Label ID="Label5" runat="server" style="z-index: 1; left: 168px; top: 76px; position: absolute"></asp:Label>
<asp:Button ID="clear" runat="server" Text="Clear" Width="130px" BackColor="White" BorderColor="Black" OnClick="Button1_Click" Font-Bold="False" style="height: 26px; z-index: 1; left: 401px; top: 73px; position: absolute"/>
<br />
<br />
<asp:Button ID="ADD" runat="server" OnClick="Button2_Click" Text="Addition" Width="130px" BackColor="White" BorderColor="Black" CommandArgument="+" CommandName="ADD" OnCommand="BTN_CLK" BorderStyle="Solid" />
<asp:Button ID="SUB" runat="server" Text="Substraction" Width="130px" BackColor="White" BorderColor="Black" CommandArgument="-" CommandName="SUB" OnClick="Button2_Click" OnCommand="BTN_CLK" />
<asp:Button ID="MUL" runat="server" Text="Multiplication" Width="130px" BackColor="White" BorderColor="Black" CommandArgument="*" CommandName="MUL" OnCommand="BTN_CLK" OnClick="Button2_Click" />
<asp:Button ID="DIV" runat="server" Text="Division" Width="130px" BackColor="White" BorderColor="Black" CommandArgument="/" CommandName="DIV" OnCommand="BTN_CLK" OnClick="Button2_Click" style="height: 26px"/>
</div>
</form>
</body>
</html>
