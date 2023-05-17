<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Shops.aspx.cs" Inherits="NextSeyahat.Shops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>

    .slider-area{
        display:none;
    }

</style>

    <h3>Hotel listesi</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form runat="server">


        <asp:DropDownList ID="ddlSortBy" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSortBy_SelectedIndexChanged">
           
        <asp:ListItem Text="Fiyat: Düşükten Yükseğe" Value="asc"></asp:ListItem>
        <asp:ListItem Text="Fiyat: Yüksekten Düşüğe" Value="desc"></asp:ListItem>
    </asp:DropDownList>
    

        <style>

            .btns {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 5px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.btns1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
  border-radius:5px;
}


</style>

    <asp:Button ID="btnSort" runat="server" Text="Sırala" OnClick="btnSort_Click" CssClass="btns btns1"/>
    


        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fullstackappDBConnectionString5 %>" SelectCommand="SELECT * FROM [tblTurPaket]"></asp:SqlDataSource>

         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

             <ItemTemplate>


                 <style>
                    /*.imgc{
                         min-width:50%;
                         max-width:70%;

                     }

                        */

                     @media (min-width: 58px) {
                         .table-responsive .imgc {
                             width: 8rem;
                         }

                         .table-responsive td:not(:first-child) {
                             width: 10%;
                         }
                     }



                      @media (min-width: 768px) {
                         .table-responsive .imgc {
                             width: 70%;
                         }

                         .table-responsive td:not(:first-child) {
                             width: 10%;
                         }



                     }



}







                 </style>
                 <div class="container">
<div class="table-responsive-md" >
  <table class="table table-striped">
    <tbody>
      <tr>
        <td>
          <a href="#">
            <img class="imgc" style="height:80px;border-radius:8px" src='<%# Eval("Resim") %>' alt='<%# Eval("Adi") %>'>
          </a>
        </td>
        <td >         
             <br>
          <span class="text-muted"><%# Eval("Lokasyon") %></span>
        </td>
<br></br>
          <td class="text-left "><h4><%# Eval("Adi") %></h4></td>
          <br></br>
          <td >
               <span class = "fa fa-star checked" style="color:yellow"></span>      
              <span class="ml-2 text-muted"><%# Eval("Sure") %></span>
              <p class="card-text"><span class="badge bg-danger" style="color:aliceblue">1 Gece</span></p>
              </td>
          </br>
        <td class="text-left ">   <p class="card-text" ><span class="badge bg-success" style="color:aliceblue"><%# Eval("Fiyat") %> ₺</span></p> </td>
        <td >
         <a href="<%# Eval("Detay") %>" target="_blank"> <button type="button" class="btn btn-primary btn-sm">Rezervasyon</button></a>
        </td>
      </tr>
    </tbody>
  </table>
</div>

                     </div>


                 </ItemTemplate>

             </asp:Repeater>

        </form>


</asp:Content>
