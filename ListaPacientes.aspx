<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPacientes.aspx.cs" Inherits="Hospital.Tarea4.ListaPacientes" %>

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
        .auto-style7 {
            margin-left: 8px;
        }
        .auto-style8 {
            width: 591px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Lista de pacientes</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style7" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="128px" Width="411px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                            <asp:CheckBoxField DataField="Seguro" HeaderText="Seguro" SortExpression="Seguro" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalTarea4ConnectionString %>" SelectCommand="SELECT * FROM [Paciente]"></asp:SqlDataSource>
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
