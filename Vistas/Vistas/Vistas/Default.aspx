<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vistas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
       .espacio 
        {
            padding-top: 10px;
            font-family: Roboto;
            text-align: center;
        }
        a {
            text-decoration: none;
            color: #808080;
            padding: 8px 15px 8px 15px;
            background-color: #FFFFFF;
            border: 1px solid #808080;
        }

        a:hover {
            color: #FFFFFF;
            background-color: #A70000;
            border: 1px solid #A70000;
        }

        .boton {
            padding-top: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="espacio">
            <asp:Label ID="titulo" runat="server" ForeColor="#A70000" Text="Menú principal" Font-Size="35px"></asp:Label>
       </div>
    <div class="boton">
        <a ID="cliente" href="http://localhost:1318/Cliente1.aspx">Cliente</a>
        <a ID="camarero" href="http://localhost:1318/Camarero.aspx">Camarero</a>
        <a ID="platillos" href="http://localhost:1318/ControlPlatillos.aspx">Platillos</a>
        <a ID="ordenes" href="http://localhost:1318/Ordenes.aspx">Ordenes</a>
    </div>
        
    </form>
</body>
</html>
