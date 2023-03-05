<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" CodeBehind="Default.aspx.cs" Inherits="WebAppTest._Default" %>

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
                    <td>Имя:</td>
                    <td>
                        <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Фамилия:</td>
                    <td>
                        <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Возраст:</td>
                    <td>
                        <asp:TextBox ID="TextBoxAge" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ButtonAdd" runat="server" Text="Добавить" OnClick="ButtonAdd_Click" /></td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridViewData" runat="server" AutoGenerateColumns="False" OnRowEditing="GridViewData_RowEditing">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate><%# Eval("FirstName") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate><%# Eval("LastName") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Возраст">
                        <ItemTemplate><%# Eval("Age") %></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxEditAge" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>

            <asp:Button ID="ButtonSave" runat="server" Text="Сохранить" OnClick="ButtonSave_Click" />

        </div>
    </form>
</body>
</html>
