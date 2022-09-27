<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Vista3.aspx.cs" Inherits="Biblioteca.Vista3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Formulario" runat="server">
    <form ID="form" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" OnRowCommand="GridView1_RowCommand" OnSorting="GridView1_Sorting" DataKeyNames="ID">
            <Columns>
                <asp:TemplateField HeaderText="Modificar">
                    <ItemTemplate>
                        <asp:ImageButton runat="server" ID="btnModificar" ImageUrl="Contenido/images/editar.png" CommandName="Modificar" CommandArgument='<%# Container.DataItemIndex.ToString() %>' ImageAlign="Middle" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
