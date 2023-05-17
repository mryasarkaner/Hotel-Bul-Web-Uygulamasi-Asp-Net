<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="NextSeyahat.Yonetim.GaleriEkleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Galeri Resim Ekle/Sil Sayfası</h3>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


                <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">    
                  <form class="forms-sample" runat="server">

                      <h3>Galeri Resim Yükleme Alanı</h3>
                      <br />

                       <div class="form-group">
                      <label for="exampleInputName1">Resim Adı</label>

                           <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Resim Adı"></asp:TextBox>
                    </div>

                      <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>

                           <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                      <br />

                    <div class="form-group">
                      <label>Resim Ekle</label>                   
                          <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                          <br />
                           <asp:Button ID="Button2" runat="server" Text="ResimYükle" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click" />                
                    </div>

                      <div class="form-group">
                          <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>

                           </div>


                   <div class="form-group">
                          <br />
                           <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click" />                
                    </div>

                  </form>
                </div>
              </div>
            </div>

</asp:Content>
