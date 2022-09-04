<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Biblioteca.Inicio" %>

<asp:Content ContentPlaceHolderID="Formulario" ID="ContentFormulario" runat="server">
    <h2 class="mb-4">Sidebar #01</h2>
    <div>
        <form runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblNombre" Text="Nombre " runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"> </asp:TextBox>
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtNombre" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Text="*" ErrorMessage="El nombre es obligatorio"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAño" Text="Año" runat="server"></asp:Label></td>
                    <td>
                        <asp:TextBox TextMode="Number" ID="txtAño" runat="server"> </asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="El nombre es obligatior" Text="*" ForeColor="Red" ControlToValidate="txtAño" runat="server" />
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtAño" Type="Integer" MinimumValue="1" MaximumValue="100" runat="server" ForeColor="Red" ErrorMessage="El año debe ser mayor a 1 y menor a 100"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEditorial" Text="Editorial" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEditorial" runat="server"> </asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAutor" Text="Autor" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAutor" runat="server"> </asp:TextBox>

                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblISBN" Text="ISBN" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtISBN" runat="server"> </asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtISBN" Text="*" ErrorMessage="El ISBN es obligatorio" runat="server"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator" 
                            ControlToValidate="txtISBN" Text="*" ErrorMessage="ISBN no tiene formato correcto" 
                            ValidationExpression="\d{5}" EnableClientScript="false" Display="Dynamic"> </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCategoria" Text="Categoria" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE" DataValueField="ID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cadena %>" SelectCommand="SELECT * FROM [CATEGORIA]"></asp:SqlDataSource>
                    <td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

            <br />
            <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />
            <asp:Button ID="btnEnviar" Text="Enviar" runat="server" OnClick="btnEnviar_Click" CssClass="btn-success" />
        </form>

    </div>
</asp:Content>
