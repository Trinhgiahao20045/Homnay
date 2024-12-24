<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nhapthongtin.aspx.cs" Inherits="bt1.nhapthongtin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            height: 99px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 176px;
        }
        .auto-style10 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2"><strong>Dang ky thong tin</strong></td>
            </tr>
            <tr>
                <td class="text-end">Ho va ten:</td>
                <td>
                    <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-end">Ngay sinh:</td>
                <td>
                    <asp:TextBox ID="txtngaysinh" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-end">gioi tinh:</td>
                <td>
                    <asp:RadioButton ID="rdnam" runat="server" Text="Nam" Checked="true" GroupName="GT" />
                    <asp:RadioButton ID="rdnu" runat="server" Text="Nữ" GroupName="GT" />
                </td>
            </tr>
            <tr>
                <td class="text-end">trinh do:</td>
                <td>
                    <asp:DropDownList ID="ddltrinhdo" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-end">nghe nghiep:</td>
                <td>
                    <asp:ListBox ID="lstnghe" runat="server" Rows="6" CssClass="form-control"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="text-end">hinh:</td>
                <td>
                    <asp:FileUpload ID="fhinh" runat="server" CssClass="form-control"/>
                </td>
            </tr>
            <tr>
                <td class="text-end">so thich:</td>
                <td>
                    <asp:CheckBoxList ID="cklsothich" runat="server" CssClass="form-control">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btngui" runat="server" Text="gửi" CssClass="btn-outline-primary" />
                    <asp:Button ID="btnnhaplai" runat="server" Text="nhập lại" CssClass="btn-outline-warning" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="2">Ket qua dang ky</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
