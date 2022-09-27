<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Vista2.aspx.cs" Inherits="Biblioteca.Vista2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Formulario" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" DataKeyNames="ID">
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
