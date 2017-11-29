<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ordenes.aspx.cs" Inherits="Vistas.Ordenes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #Ordenar 
        {
            background-color: #FFFFFF;
            color: #000000;
            border: 1px solid #CBCBBB;
        }
        #Dropdownlist1 
        {
            border: 1px solid #CBCBBB;
        }
        #Ordenar:hover
        {
            background-color: #A70000;
            color: #FFFFFF;
            border: 1px solid #A70000;
            cursor: pointer;
        }
        .espacio 
        {
            padding-top: 10px;
            font-family: Roboto;
            text-align: center;
        }
        .espacio2
        {
            padding-top: 10px;
            font-family: Roboto;
            padding-left: 33%;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

        <div class="espacio">
            <asp:Label ID="titulo"  runat="server" ForeColor="#A70000" Text="Ordenes" Font-Size="35px"></asp:Label>
        </div>
    
        <div class="espacio2">
            <asp:GridView  ID="GridView1" runat="server" Height="300px" Width="500px" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>

        <div class="espacio"><asp:Label ID="Filtros" runat="server" Text="Filtros" Font-Size="20px"></asp:Label></div>
        <div class="espacio"><asp:Button ID="Ordenar" runat="server" Text="Ordenar" OnClick="Ordenar_Click" Font-Size="Medium" Width="270px" Height="40px" /></div>
        <div class="espacio"><asp:dropdownlist ID="Dropdownlist1" runat="server" OnSelectedIndexChanged="Dropdownlist1_SelectedIndexChanged" AutoPostBack="True" OnTextChanged="Dropdownlist1_SelectedIndexChanged" Font-Size="Large" Height="40px" Width="270px">
            <asp:ListItem Value="0" Selected="True">Mesas</asp:ListItem>
            <asp:ListItem Value="1">Mesa 1</asp:ListItem>
            <asp:ListItem Value="2">Mesa 2</asp:ListItem>
            <asp:ListItem Value="3">Mesa 3</asp:ListItem>
            <asp:ListItem Value="4">Mesa 4</asp:ListItem>
            <asp:ListItem Value="5">Mesa 5</asp:ListItem>
            </asp:dropdownlist>
        </div>

    </form>

</body>

</html>
