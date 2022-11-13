<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuDatos.aspx.cs" Inherits="Hospital.Tarea4.MenuDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            color: #FFFFFF;
            background-color: #663300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Menú de datos</div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#990000" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem NavigateUrl="~/ListaPacientes.aspx" Text="Ver lista de pacientes" Value="Ver lista de pacientes"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ConsultaDatos.aspx" Text="Consultar nombre de paciente" Value="Consultar nombre de paciente"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Estadísticas.aspx" Text="Ver estadísticas" Value="Ver estadísticas"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
    </form>
</body>
</html>
