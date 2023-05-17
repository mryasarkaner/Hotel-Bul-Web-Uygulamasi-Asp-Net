<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="NextSeyahat.Yonetim.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Kurumsal | İşlemler Sayfası</h3>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


            
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">

                    

                  
                    
    
                  <div class="forms-sample">

                      <form runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>
                      
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>

                              <div class="form-group">
                      <label for="exampleTextarea1">Site Özet</label>
                        <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Özet"></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text="Tarih"></asp:Label>
                    </div>

                   


                              <div class="form-group">
                      <label for="exampleTextarea1">Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Detay"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Tarih"></asp:Label>
                    </div>



            

                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                      <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-danger" OnClick="Button1_Click" />

                      <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button2_Click"/>

                          </form>

                  </div>

                        
                </div>
              </div>
            </div>



</asp:Content>


