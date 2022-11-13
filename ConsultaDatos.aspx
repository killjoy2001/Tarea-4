<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaDatos.aspx.cs" Inherits="Hospital.Tarea4.ConsultaDatos" %>

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
            background-color: #FFFF99;
        }
        .auto-style4 {
            width: 233px;
            background-color: #FFFF99;
        }
        .auto-style5 {
            width: 233px;
            height: 36px;
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Consulta de datos por medio de nombre</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Ingrese el nombre que desea buscar:</td>
                <td class="auto-style3" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalTarea4ConnectionString %>" SelectCommand="SELECT * FROM [Paciente] WHERE ([Nombre] = @Nombre)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tNombre" Name="Nombre" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="tNombre" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="bBuscar" runat="server" OnClick="bBuscar_Click" Text="Buscar" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
