<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersGuncelle.aspx.cs" Inherits="DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

    <div class="form-group">
        <div>
            <asp:Label for="txtDersAd" runat="server">Ders Adı</asp:Label>
            <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btGuncelle" runat="server" Text="Guncelle" CssClass="btn btn-primary" OnClick="btGuncelle_Click"></asp:Button>
        </div>
    </div>
    </form>

</asp:Content>

