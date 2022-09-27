<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Biblioteca.Modificar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Formulario" runat="server">
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
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAño" Text="Año" runat="server"></asp:Label></td>
                    <td>
                        <asp:TextBox TextMode="Number" ID="txtAño" runat="server"> </asp:TextBox></td>
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
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblISBN" Text="ISBN" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtISBN" runat="server"> </asp:TextBox>
                    </td>

                </tr>
            </table>
        </form>

    </div>

</asp:Content>
