<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="NextSeyahat.Yonetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları</h3>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


      
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    
    
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">E-mail</label>
                      
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="email"></asp:TextBox>
                    </div>

                    <div class="form-group">
                      <label for="exampleInputEmail3">TLF</label>
                       <asp:TextBox ID="txtTlf" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                    </div>

                    <div class="form-group">
                      <label for="exampleInputPassword4">Adres</label>
                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" Height="100px" placeholder="Adres"></asp:TextBox>
                     
                    </div>

                      <div class="form-group">
                      <label for="exampleInputPassword4">Twitter</label>
                        <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
                     
                    </div>

                      <div class="form-group">
                      <label for="exampleInputPassword4">Facebook</label>
                        <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control"  placeholder="Facebook"></asp:TextBox>
                     
                    </div>


                      <div class="form-group">
                      <label for="exampleInputPassword4">Youtube</label>
                        <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" placeholder="Youtube"></asp:TextBox>
                     
                    </div>


                       <div class="form-group">
                      <label for="exampleInputPassword4">Instagram</label>
                        <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                     
                    </div>

                   <!--  <div class="form-group">
                      <label for="exampleSelectGender">Gender</label>
                        <select class="form-control" id="exampleSelectGender">
                          <option>Male</option>
                          <option>Female</option>
                        </select>
                      </div>
                       -->


                    <div class="form-group">
                      <label>Logo</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info">
                          <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />

                          <asp:Button ID="Button3" runat="server" Text="LogoYükle" OnClick="Button3_Click" />
                      


                      </div>
                    </div>

                      <div class="form-group">
                          <asp:Label ID="lblLogo" runat="server" Text=""></asp:Label>

                          </div>



                    <div class="form-group">
                      <label for="exampleTextarea1">Site Açıklama</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açıklama"></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text="Tarih"></asp:Label>
                    </div>

                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                      <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-danger" OnClick="Button1_Click" />

                      <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button2_Click" />


                  </form>
                </div>
              </div>
            </div>




</asp:Content>
