using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NextSeyahat.Yonetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["fullstackappDBConnectionString5"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            Button2.Enabled = false;


        }

        string id;

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select * from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTlf.Text = tablo.Rows[0]["Tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzet"].ToString();
            lblLogo.Text = tablo.Rows[0]["Logo"].ToString();
            Label1.Text = tablo.Rows[0]["id"].ToString();

            baglanti.Close();

            Button2.Enabled = true;



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail,Tlf=@Tlf,Adres=@Adres,Twitter=@Twitter,Facebook=@Facebook,Instagram=@Instagram,Youtube=@Youtube,Logo=@Logo,SiteOzet=@SiteOzet where id=@id", baglanti);

            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Tlf", txtTlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lblLogo.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());


            komut.ExecuteNonQuery();

            baglanti.Close();

            Response.Redirect("Ayarlar.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    // yukarıda bu türlerde resim var ise bloğu çalıştır
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/logo" + ResimAd));
                    // NEREYE KAYDEDİLECEĞİNİ SEÇİYORUZ
                    lblLogo.Text = ResimAd.ToString();

                }

                else
                {
                    lblLogo.Text = "Lütfen jpeg veya png formatında dosya seçin.";
                }

            }

            else

                lblLogo.Text = "Lütfen bir resim seçin..";

        }
    }
}