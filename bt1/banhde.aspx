<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="banhde.aspx.cs" Inherits="bt1.banhde" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 259px;
        }
        .auto-style2 {
            width: 259px;
            text-align: center;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div class="text-center">
        <div class="container form-container">
            <div class="card">
                <div class="card-header text-center">
                    <strong>ĐƠN ĐẶT HÀNG</strong>
                </div>
                <div class="card-body">               
                    <div class="form-group row">
                        <label for="txtKH" class="col-sm-3 col-form-label custom-label">Khách hàng</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtKH" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="txtDC" class="col-sm-3 col-form-label custom-label">Địa chỉ</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtDC" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                    </div>                 
                    <div class="form-group row">
                        <label for="txtThue" class="col-sm-3 col-form-label custom-label">Mã số thuế</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="txtThue" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                    </div>

                    
                    <table class="w-100">
                        <tr>
                            <td class="auto-style1">Chọn các loại bánh sau</td>
                            <td>Danh sách bánh</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:DropDownList ID="DDlLoaiBanh" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:ListBox ID="LBBanhDat" CssClass="form-control" runat="server" Width="100%"></asp:ListBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Số lượng:
                                <asp:TextBox ID="txtSoLuong" runat="server" Width="65px"></asp:TextBox>
                                cái</td>
                            <td>
                                <asp:Button ID="btXoa" runat="server" Text="Xoá" OnClick="btThemBanh_Click1" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><asp:Button ID="btThemBanh" runat="server" Text=">" OnClick="btXoa_Click" />
                                
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>                                    

                </div>
            </div>
        </div>
        <asp:Button ID="btIn" runat="server" Text="In đơn đặt hàng" OnClick="btIn_Click" />
        </div>
        <asp:Label ID="lblHoaDon" runat="server" Text=""></asp:Label>
    </form>
    
</body>
</html>
