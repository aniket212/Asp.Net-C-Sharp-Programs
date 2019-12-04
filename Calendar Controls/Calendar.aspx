<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:Label ID="Label1" runat="server" Text="Do You Want To Set Reminder ?"></asp:Label> &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow" style="z-index: 1; left: 232px; top: 208px; position: absolute; height: 27px; width: 107px">
<asp:ListItem Value="Yes">Yes</asp:ListItem>
<asp:ListItem Value="No">No</asp:ListItem>
</asp:RadioButtonList>
<br />
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Enter Text To Be Inserted :"></asp:Label> &nbsp;
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Submit" />

    </form>
</body>
</html>
