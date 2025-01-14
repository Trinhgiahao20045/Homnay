<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="bt1.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 510px;
            height: 427px;
        }
        .auto-style3 {
            width: 349px;
        }
        .auto-style4 {
            width: 349px;
            text-align: center;
            color: #9900CC;
            background-color: #FF99CC;
        }
        .auto-style5 {
            text-align: center;
            height: 23px;
            color: #9900FF;
            background-color: #FF99FF;
        }
        .auto-style6 {
            width: 349px;
            text-align: center;
            height: 23px;
            color: #9900FF;
            background-color: #FF99CC;
        }
        .auto-style7 {
            width: 349px;
            height: 24px;
        }
        .auto-style9 {
            width: 349px;
            height: 30px;
        }
        .auto-style11 {
            width: 349px;
            text-align: center;
            height: 30px;
        }
        .auto-style12 {
            width: 349px;
            text-align: left;
        }
        .auto-style13 {
            width: 349px;
            height: 25px;
        }
        .auto-style14 {
            height: 25px;
        }
        .auto-style15 {
            height: 62px;
        }
        .auto-style16 {
            height: 30px;
        }
        .auto-style17 {
            width: 349px;
            height: 61px;
        }
        .auto-style18 {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style6" >
                        Thông tin đăng nhập</td>
                    <td class="auto-style5">Hồ sơ khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style3" rowspan="2">Tên đăng nhập:<asp:TextBox ID="txtten" runat="server" MaxLength="16"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvten" runat="server" ControlToValidate="txtten" Display="Dynamic" ErrorMessage="Tên đăng nhập không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revten" runat="server" ControlToValidate="txtten" Display="Dynamic" ErrorMessage="tên đăng nhập không hợp lệ" ForeColor="Red" ValidationExpression="[\d|\w|!|&amp;|_]{8}[\d|w|!|&amp;_]+">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style15">
                        <asp:ValidationSummary ID="vsbangloi" runat="server" ForeColor="#990000" HeaderText="*danh sách lỗi" ShowMessageBox="True" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu:<asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" Display="Dynamic" ErrorMessage="mật khẩu không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập lại mật khẩu:<asp:TextBox ID="txtmatkhaulai" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvnhaplai" runat="server" ControlToValidate="txtmatkhaulai" ErrorMessage="Mật khẩu nhập lại không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvnhaplai" runat="server" ControlToCompare="txtmk" ControlToValidate="txtmatkhaulai" Display="Dynamic" ErrorMessage="Có gì đó sai" ForeColor="Red">(*)</asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Thông tin cá nhân</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Họ tên khách:<asp:TextBox ID="txthtk" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ControlToValidate="txthtk" Display="Dynamic" ErrorMessage="Tên khách không được rỗng" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">Ngày sinh:<asp:DropDownList ID="ddlngay" runat="server" CssClass="form-select" Height="16px" Width="72px">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlthang" runat="server" CssClass="form-select">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlnam" runat="server" CssClass="form-select">
                        </asp:DropDownList>
    
                        <asp:RequiredFieldValidator ID="rfvngay" runat="server" ControlToValidate="ddlngay" Display="Dynamic" ErrorMessage="chưa chọn ngày sinh" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvthang" runat="server" ControlToValidate="ddlthang" Display="Dynamic" ErrorMessage="chưa chọn tháng sinh" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvnam" runat="server" ControlToValidate="ddlnam" Display="Dynamic" ErrorMessage="chưa chọn năm sinh" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ErrorMessage="email không hợp lệ" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Thu Nhập:<asp:TextBox ID="txtthunhap" runat="server" Width="98px"></asp:TextBox>
                        <asp:RangeValidator ID="rvthunhap" runat="server" ControlToValidate="txtthunhap" ErrorMessage="thu nhap tu 50000000 đến 1000000" ForeColor="Red" MaximumValue="50000000" MinimumValue="1000000" Type="Integer">(*)</asp:RangeValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">Giới tính:<asp:CheckBox ID="chkgioitinh" runat="server" Text="Nam" />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style9">Địa chỉ:<asp:ListBox ID="lstdiachi" runat="server"  Height="25px" Width="130px"></asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Điện thoại:<asp:TextBox ID="txtdienthoai" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="btndangky" runat="server" Text="Đăng Ký" />
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
