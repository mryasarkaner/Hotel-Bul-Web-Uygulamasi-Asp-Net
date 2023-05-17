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
    public partial class PaketEkle : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["fullstackappDBConnectionString5"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    // yukarıda bu türlerde resim var ise bloğu çalıştır
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
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

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblTurPaket(Adi,Fiyat,Sure,Lokasyon,Resim,Detay) values (@Adi,@Fiyat,@Sure,@Lokasyon,@Resim,@Detay)", baglanti);

            komut.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", Convert.ToInt32(txtFyt.Text.ToString()));
            komut.Parameters.AddWithValue("@Sure", txtSure.Text.ToString());
            komut.Parameters.AddWithValue("@Lokasyon", txtLokasyon.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());

            komut.ExecuteNonQuery();

            baglanti.Close();

            Response.Redirect("PaketEkle.aspx");
            lblTurEklendi.Text = "Kayıt Başarıyla Eklendi";
            

        }
    }
}