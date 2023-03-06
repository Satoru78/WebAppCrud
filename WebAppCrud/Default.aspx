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
            <asp:GridView ID="GridViewData" runat="server" AutoGenerateColumns="False" OnRowEditing="GridViewData_RowEditing" >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Артикул">
                        <ItemTemplate><%# Eval("Articul") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditArticul" runat="server" Text='<%# Bind("Articul") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Название">
                        <ItemTemplate><%# Eval("Title") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditTitle" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Еденица измерения">
                        <ItemTemplate><%# Eval("Unit") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditUnit" runat="server" Text='<%# Bind("Unit") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Стоимость">
                        <ItemTemplate><%# Eval("Cost") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditCost" runat="server" Text='<%# Bind("Cost") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Скидка">
                        <ItemTemplate><%# Eval("Discount") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditDiscount" runat="server" Text='<%# Bind("Discount") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Производитель">
                        <ItemTemplate><%# Eval("Manufacturer") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditManufacturer" runat="server" Text='<%# Bind("Manufacturer") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Поставщик">
                        <ItemTemplate><%# Eval("Supplier") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditSupplier" runat="server" Text='<%# Bind("Supplier") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Категория продуктов">
                        <ItemTemplate><%# Eval("IDProductCategory") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditIDProductCategory" runat="server" Text='<%# Bind("IDProductCategory") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Количество на складе">
                        <ItemTemplate><%# Eval("QuInStock") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditQuInStock" runat="server" Text='<%# Bind("QuInStock") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Описание">
                        <ItemTemplate><%# Eval("Description") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditDescription" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Изображение">
                        <ItemTemplate><%# Eval("Image") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditImage" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>

            <%--<asp:Button ID="ButtonSave" runat="server" Text="Сохранить" OnClick="ButtonSave_Click" />--%>

        </div>
    </form>
</body>
</html>
