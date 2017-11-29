<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPlatillos.aspx.cs" Inherits="Vistas.ControlPlatillos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Control de Platillos</title>
    <style>
        .titulo {
            font-family: Roboto;
            max-width: 100%;
            position: relative;
            font-size: 20px;
            text-align: center;
        }

        table {
            padding-top: 30px;
            font-family: Roboto;
            width: 100%;
        }

        .titulo h1 {
            margin: 0px;
        }

        h3 {
            margin: 0px;
            color: #A70000;
        }

        td, th {
            padding-left: 50px;
            width: 50%;
        }

        td {
            padding-bottom: 20px;
        }

        #agregar, #modificar, #delete {
            padding: 8px 15px 8px 15px;
            background-color: #FFFFFF;
            border: 1px solid #000000;
        }

            #agregar:hover, #modificar:hover, #delete:hover {
                cursor: pointer;
                color: #FFFFFF;
                background-color: #A70000;
                border: 1px solid #A70000;
            }

        input, #id_platilloEx, #id_platilloMx {
            padding: 5px;
            padding-left: 10px;
            font-family: Roboto;
            font-size: 15px;
            border: 2px solid #CBCBBB;
        }

        .campo {
            padding-top: 10px;
        }

        .cubierta {
            padding-top: 10px;
            display: block;
        }

        #RequiredFieldValidator1 {
            color: red;
        }

        #RequiredFieldValidator2 {
            color: red;
        }
    </style>

    <script>
        function Eliminar() {
            if (confirm("¿Estas seguro que deseas eliminar el platillo con ID " + document.getElementById("id_platilloE").value + "?")) {
                var boton = document.getElementById('<%=eliminar.ID%>');
                boton.click();
            }
        }

        function soloLetras(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 65 && key <= 90) || (key >= 97 && key <= 122) || (key == 8) || (key == 32))
        }

        function soloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || (key == 8))
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="titulo">
            <h1>Control de los Platillos</h1>
        </div>

        <table>
            <tr>
                <th></th>
                <th></th>
            </tr>

            <tr>
                <td>
                    <h3>Ingresar Platillo:</h3>
                    <div class="campo">
                        <asp:TextBox ID="platillo" runat="server" onKeyPress="return soloLetras(event)" placeholder="Nombre del Platillo" pattern="[A-Z | a-z]+"></asp:TextBox>
                    </div>
                    <div class="campo">
                        <asp:TextBox ID="precio" runat="server" onKeyPress="return soloNumeros(event)" placeholder="Precio del Platillo" pattern="[0-9]+"></asp:TextBox>
                    </div>
                    <div class="cubierta">
                        <asp:Button ID="agregar" runat="server" Text="Agregar" OnClick="agregar_Click" />
                    </div>
                </td>
                <td>
                    <asp:GridView ID="Vista" runat="server" style="position: absolute; top: 100px; left: 374px; width: 900px;" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="Vista_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="False" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Modificar Platillo:</h3>
                    <div class="campo">
                         <asp:TextBox ID="id_platilloM" runat="server" onKeyPress="return soloNumeros(event)" placeholder="ID del Platillo" pattern="[0-9]+"></asp:TextBox>
                    </div>
                    <div class="campo">
                        <asp:TextBox ID="nuevoNombre" runat="server" onKeyPress="return soloLetras(event)" placeholder="Nombre del Platillo" pattern="[A-Z | a-z]+"></asp:TextBox>
                    </div>
                    <div class="campo">
                        <asp:TextBox ID="nuevoPrecio" runat="server" onKeyPress="return soloNumeros(event)" placeholder="Precio del Platillo" pattern="[0-9]+"></asp:TextBox>
                    </div>
                    <div class="cubierta">
                        <asp:Button ID="modificar" runat="server" Text="Modificar" OnClick="modificar_Click" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="padding-bottom: 0px;">
                    <h3>Eliminar Platillo:</h3>
                    <div class="campo" style="padding-bottom: 10px;">
                        <asp:TextBox ID="id_platilloE" runat="server" onKeyPress="return soloNumeros(event)" placeholder="ID del Platillo" pattern="[0-9]+"></asp:TextBox>
                    </div>
                    <div class="cubierta"><a id="delete" runat="server" text="Eliminar" onclick="Eliminar();">Eliminar</a></div>
                    <asp:Button style="opacity: 0;" ID="eliminar" runat="server" Text="" OnClick="eliminar_Click" />
                </td>
            </tr>

        </table>

    </form>
</body>
</html>
