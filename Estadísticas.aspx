<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estadísticas.aspx.cs" Inherits="Hospital.Tarea4.Estadísticas" %>

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
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            background-color: #FFFF99;
        }
        .auto-style4 {
            height: 26px;
            background-color: #FFFF99;
        }
        .auto-style5 {
            width: 178px;
            background-color: #FFFF99;
        }
        .auto-style6 {
            height: 26px;
            width: 178px;
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Estadísticas</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Porcentaje de asegurados:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Porcentaje de no asegurados:</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Porcentaje de niños:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Porcentaje de jóvenes:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Porcentaje de adultos:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Porcentaje de hombres:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Porcentaje de mujeres:</td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Button ID="bActualizar" runat="server" OnClick="bActualizar_Click" Text="Actualizar" />
    </form>
</body>
</html>
