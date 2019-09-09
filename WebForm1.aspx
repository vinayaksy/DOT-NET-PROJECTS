<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
        }

        .auto-style2 {
            width: 133px;
        }

        .auto-style3 {
            width: 288px;
        }

        .auto-style4 {
            width: 133px;
            height: 23px;
        }

        .auto-style5 {
            width: 288px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="3600" OnTick="Timer1_Tick"></asp:Timer>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Salary"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">
                                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style5">
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
