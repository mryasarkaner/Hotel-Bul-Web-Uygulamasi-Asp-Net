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
    public partial class BlogDuzenleSecilen : System.Web.UI.Page
    {
        DateTime bugun = DateTime.Now;

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["fullstackappDBConnectionString5"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
            Button2.Enabled = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            SqlCommand komut = new SqlCommand("update tblBlog set Baslik=@Baslik,Ozet=@Ozet,KategoriId=@KategoriId,Resim=@Resim,Detay=@Detay,Tarih=@Tarih where id=@id", baglanti);

            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);


            komut.ExecuteNonQuery();

            baglanti.Close();
            Response.Redirect("BlogDuzenleSil.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

       

            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select * from tblBlog where id=@id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            DropDownList1.SelectedValue = tablo.Rows[0]["KategoriId"].ToString();

            lblResim.Text = tablo.Rows[0]["Resim"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            lblTarih.Text = tablo.Rows[0]["Tarih"].ToString();

            baglanti.Close();

            Button2.Enabled = true;

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