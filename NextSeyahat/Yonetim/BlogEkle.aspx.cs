using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace NextSeyahat.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["fullstackappDBConnectionString5"].ConnectionString;

        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblBlog(Baslik,Ozet,KategoriId,Resim,Detay,Tarih) values (@Baslik,@Ozet,@KategoriId,@Resim,@Detay,@Tarih)", baglanti);

            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            // komut.Parameters.AddWithValue("@Ozet", Convert.ToInt32(txtFyt.Text.ToString()));
            komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);

            komut.ExecuteNonQuery();


            baglanti.Close();

            Response.Redirect("BlogEkle.aspx");
            



        }

        protected void Button2_Click(object sender, EventArgs e)
        {



            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    // yukarıda bu türlerde resim var ise bloğu çalıştır
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/blogresim" + ResimAd));
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