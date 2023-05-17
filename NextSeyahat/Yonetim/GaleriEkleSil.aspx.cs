using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NextSeyahat.Yonetim
{
    public partial class GaleriEkleSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    // yukarıda bu türlerde resim var ise bloğu çalıştır
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/galeri" + ResimAd));
                    // NEREYE KAYDEDİLECEĞİNİ SEÇİYORUZ
                    lblResim.Text = ResimAd.ToString();

                }

                else
                {
                    lblResim.Text = "Lütfen jpeg veya png formatında dosya seçin.";
                }

            }

            else

                lblResim.Text = "Lütfen bir resim seçin..";


        }
    }
}