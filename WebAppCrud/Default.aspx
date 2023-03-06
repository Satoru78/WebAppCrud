<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" CodeBehind="Default.aspx.cs" Inherits="WebAppCrud._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Добавление данных</title>
    <style type="text/css">
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center">
            <table>
                <tr>
                    <td>Артикул:</td>
                    <td>
                        <asp:TextBox ID="TextBoxArticul" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Название:</td>
                    <td>
                        <asp:TextBox ID="TextBoxTitle" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Еденица измерения:</td>
                    <td>
                        <asp:TextBox ID="TextBoxUnit" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Стоимость:</td>
                    <td>
                        <asp:TextBox ID="TextBoxCost" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Скидка:</td>
                    <td>
                        <asp:TextBox ID="TextBoxDiscount" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Производитель:</td>
                    <td>
                        <asp:TextBox ID="TextBoxManufacturer" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Поставщик:</td>
                    <td>
                        <asp:TextBox ID="TextBoxSupplier" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Категория:</td>
                    <td>
                        <asp:TextBox ID="TextBoxIDProductCategory" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Количество на складе:</td>
                    <td>
                        <asp:TextBox ID="TextBoxQuInStock" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Описание:</td>
                    <td>
                        <asp:TextBox ID="TextBoxDescription" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Изображение:</td>
                    <td>
                        <asp:TextBox ID="TextBoxImage" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ButtonAdd" runat="server" Text="Добавить" OnClick="ButtonAdd_Click" /></td>
                </tr>
            </table>
            <br />
           <%-- <asp:GridView ID="GridViewData" runat="server" AutoGenerateColumns="False" OnRowEditing="GridViewData_RowEditing" >
                <Columns>
                    <asp:BoundField DataField="Артикул" HeaderText="Id" ReadOnly="True" />
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate><%# Eval("Articul") %></ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Название">
                        <ItemTemplate><%# Eval("Title") %></ItemTemplate>
                       
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Еденица измерения">
                        <ItemTemplate><%# Eval("Unit") %></ItemTemplate>
                       
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>

            <%--<asp:Button ID="ButtonSave" runat="server" Text="Сохранить" OnClick="ButtonSave_Click" />--%>--%>

        </div>
    </form>
</body>
</html>
