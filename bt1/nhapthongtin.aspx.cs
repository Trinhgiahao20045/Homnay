using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bt1
{
    public partial class nhapthongtin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                khoitaoDulieu();
            }    
        }

        private void khoitaoDulieu()
        {
            //khoi tao du lieu
            ddltrinhdo.Items.Add("trung cap");
            ddltrinhdo.Items.Add("tieu hoc");
            ddltrinhdo.Items.Add("dai hoc");

            lstnghe.Items.Add("cong nhan");
            lstnghe.Items.Add("tai xe");
            lstnghe.Items.Add("ban hang");

            cklsothich.Items.Add("xem phim");
            cklsothich.Items.Add("an uong");
            cklsothich.Items.Add("du lich");
            cklsothich.Items.Add("mua sam");
            cklsothich.Items.Add("doc sach");
        }

        protected System.Void btngui_Click(System.Object sender, System.EventArgs e)
        {
            //b1. thu nhap thong tin
            string kq = "<ul>";
            kq += "<li>Họ tên: <b> " + txthoten.Text + "</b>";

            kq += "</ul>";
            //b2 gui thong tin ve client
            lblkq.Text = kq;
        }
    }
}