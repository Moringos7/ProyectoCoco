<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente1.aspx.cs" Inherits="Cliente.Cliente1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 29px;
            width: 131px;
        }
        #SelectMesa
        {
            position: absolute;
            right: 2000px;
        }
        #Select2 {
            position: absolute;
            width: 197px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" align="center">
    <div>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" Font-Size="50px" ForeColor="#A70000" Text="Cliente"></asp:Label>
        </p>
        &nbsp;
        Mesa:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:DropDownList ID="DropDownList2" runat="server">
      <asp:ListItem>1</asp:ListItem>
      <asp:ListItem>2</asp:ListItem>
      <asp:ListItem>3</asp:ListItem>
      <asp:ListItem>4</asp:ListItem>
      <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>
        &nbsp;</div>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server" Width="31px">1</asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Numero De orden:"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="" style="position:relative;left: 10px;"></asp:Label>
            </p>
            <div>
                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Cargar" Width="106px" UseSubmitBehavior="False" CausesValidation="False" style="position:relative; left:0px;"/>        
                <asp:Button ID="Button2" runat="server" Height="73px" Text="Ordenar" Width="111px" OnClick="Button2_Click" style="position:relative; left:0px; top: 50px"/>
                <asp:ListBox ID="ListBox1" runat="server" Height="114px" Width="194px" style="position:relative; right:0px;"></asp:ListBox>
            </div>
    </form>
    </body>
</html>
