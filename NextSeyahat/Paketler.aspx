<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Paketler.aspx.cs" Inherits="NextSeyahat.Paketler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Paketler</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">

     <div class="row">

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fullstackappDBConnectionString5 %>" SelectCommand="SELECT * FROM [tblTurPaket]"></asp:SqlDataSource>

         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

             <ItemTemplate>

                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="<%# Eval("Resim") %>" alt='<%# Eval("Adi") %>'>
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span><%# Eval("Sure") %></span> </span>
                                    <h3><a href="#"><%# Eval("Adi") %></a></h3>
                                    <p class="dolor"><%# Eval("Fiyat") %> ₺ <span>/ Kişi Başı</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i> 1 Gece</li>
                                        <li><i class="fas fa-map-marker-alt"></i><%# Eval("Lokasyon") %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                      </div>
                    

             </ItemTemplate>


         </asp:Repeater>

           </div>         

        </form>

</asp:Content>
