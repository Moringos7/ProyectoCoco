<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Camarero.aspx.cs" Inherits="Vista.Camarero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Camarero</title>
</head>
    <style>
        body {
            font-family: Roboto;
        }
        h1 {
            text-align: center;
            font-size: 50px;
        }
        .Buscador {
            display: block;
            margin: 25px auto;
            width: 16%;
        }
        .DatosI{
            width: 70%;
            margin-left: 25%;
        }
        .DatosI ul{
            font-size: 20px;
            list-style: none;
        }
        .DatosI ul li{
            
        }
        .Tabla {
            width: 45%;
            margin: 30px auto;
            text-align: center;
            font-size: 20px;
        }
        td {
           border-right: 1px solid black;
           padding: 0px 7px;
           border-bottom: 1px solid black;
        }
        table {
           border: 1px solid black;
           border-bottom-color: white;
           border-left-color: white;
        }
        table ul {
            list-style: none;
        }
        table .cant li{
            margin-left: -40px;
        }
        table .plat li{
            margin-left: -30px;
        }
        table .precio li{
            margin-left: -45px;
        }
        table .subT li{
            margin-left: -45px;
        }
        table .total li{
            margin-left: -45px;
        }
               
        .auto-style1 {
            height: 51px;
        }
        .auto-style2 {
            height: 94px;
        }
               
    </style>
<body>
    <form id="form1" runat="server">
        <h1>Camarero</h1>

        <div class="Buscador">
            <p>
                <asp:TextBox ID="TextBoxCama" runat="server" Height="21px" Width="142px"></asp:TextBox>
                <asp:Button ID="ButtonF" runat="server" Height="27px" Text="Buscar" Width="82px" Name="Buscar" OnClick="ButtonF_Click" />
            </p>
        </div>
        <div class="DatosI">
            <ul>
                <li>Fecha: <asp:Label ID="LFecha" runat="server"></asp:Label></li>
                <li>Mesa: <asp:Label ID="LMesa" runat="server"></asp:Label></li>
            </ul>
        </div>
        <div class="Tabla">
            <table>
                <tr>
                    <td colspan="4" style="border-bottom: 1px black solid; border-left: 1px solid black;">Orden</td>
                </tr>
                <tr>
                    <td style=" border-left: 1px solid black;" class="auto-style1">Cantidad</td>
                    <td style="padding:0px 125px" class="auto-style1">Platillo</td>
                    <td class="auto-style1">Precio Unitario</td>
                    <td class="auto-style1">Subtotal</td>
                </tr>
                <tr>
                    <td style=" border-left: 1px solid black;" class="auto-style2"><!--Cantidad-->
                        <asp:ListBox ID="ListCantidad" runat="server"></asp:ListBox>                       
                    </td>
                    <td class="auto-style2"> <!--Platillo-->
                        <asp:ListBox ID="ListPlatillo" runat="server"></asp:ListBox>
                    </td>
                    <td class="auto-style2"><!--Precio Unitario-->
                        <asp:ListBox ID="ListPrecio" runat="server"></asp:ListBox>                        
                    </td>
                    <td class="auto-style2"><!--Subtotal-->
                       <asp:ListBox ID="ListSubtotal" runat="server"></asp:ListBox>                        
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 1px solid white; border-bottom: 1px solid white; border-right: 1px solid white;"></td>
                    <td style="border-color: white; border-right: 1px solid black;"></td>
                    <td class="total">Total</td>
                    <td><asp:Label ID="LTotal" runat="server"></asp:Label></td><!--Precio Total-->
                </tr>
            </table>
        </div>

        <asp:Label ID="Label1" runat="server"></asp:Label>

    </form>
</body>
</html>
