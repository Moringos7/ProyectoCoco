<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vistas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
       .espacio 
        {
            padding-top: 10px;
            font-family: Roboto;
            text-align: center;
        }
        .boton {
            padding: 8px 15px 8px 15px;
            background-color: #FFFFFF;
           // border: 1px solid #000000;
            margin-right:15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="espacio">
            <asp:Label ID="titulo" runat="server" ForeColor="#A70000" Text="Menú principal" Font-Size="35px"></asp:Label>
       </div>
    <div class="boton">
       <asp:Button ID="Button1" runat="server" Text="Cliente" OnClick="Button1_Click"></asp:Button>
        <asp:Button ID="Button2" runat="server" Text="Camarero" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Platillos" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Ordenes" OnClick="Button4_Click" />
    </div>
        
    </form>
</body>
</html>
