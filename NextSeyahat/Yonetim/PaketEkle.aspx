<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="NextSeyahat.Yonetim.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblTurEklendi" runat="server" Text=""></asp:Label>

    <h3 class="page-title">Yeni Tur Paketi Ekle</h3>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    
    
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Hotel Adı</label>
                      
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Hotel Adı"></asp:TextBox>
                    </div>

                    <div class="form-group">
                      <label for="exampleInputEmail3">Hotel Fiyatı</label>
                       <asp:TextBox ID="txtFyt" runat="server" CssClass="form-control" placeholder="Hotel Fiyatı"></asp:TextBox>
                    </div>

                    <div class="form-group">
                      <label for="exampleInputPassword4">Paunı</label>
                      <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Hotel süresi"></asp:TextBox>
                    </div>

                        <div class="form-group">
                      <label for="exampleInputPassword4">Lokasyon</label>
                      <asp:TextBox ID="txtLokasyon" runat="server" CssClass="form-control" placeholder="Hotel Lokasyonu"></asp:TextBox>
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
                      <label>Hotel Resim Link</label>
                       <!-- <input type="file" name="img[]" class="file-upload-default">-->
                      <div class="input-group col-xs-12">
                    
                          <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />

                          <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary me-2" OnClick="Button2_Click1" />
                          

                      </div>

                        <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>



                    <div class="form-group">
                      <label for="exampleTextarea1">Link</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Hotel Link"></asp:TextBox>
                      
                    </div>

                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary me-2" OnClick="Button1_Click" />
                      


                  </form>
                </div>
              </div>
            </div>


</asp:Content>
