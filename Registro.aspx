<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Hospital.Tarea4.Hospital" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
            color: #FFFFFF;
            background-color: #663300;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 206px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Registro</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Nombre:</td>
                <td>
                    <asp:TextBox ID="tNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Edad:</td>
                <td>
                    <asp:TextBox ID="tEdad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Sexo :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Teléfono</td>
                <td>
                    <asp:TextBox ID="tTelefono" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Domicilio (Ciudad, calle, casa):</td>
                <td>
                    <asp:TextBox ID="tDomicilio" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">¿Cuenta con seguro?</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Sí</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="bAgregar" runat="server" OnClick="bAgregar_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bMenu" runat="server" OnClick="bMenu_Click" Text="Volver a menú" Width="109px" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
