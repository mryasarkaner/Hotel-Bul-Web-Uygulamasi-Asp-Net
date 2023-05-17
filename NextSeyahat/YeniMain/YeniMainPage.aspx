<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="YeniMainPage.aspx.cs" Inherits="NextSeyahat.YeniMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>

    .slider-area{
        display:none;
    }

    .mento{
        margin-bottom:10px;
    }

</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

        </form>



</asp:Content>