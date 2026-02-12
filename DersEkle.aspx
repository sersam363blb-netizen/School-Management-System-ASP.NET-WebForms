<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="Ders_Ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form2" runat="server">

        <div class="form-group">

            <br />
            <br />
            <br />
            <br />
            <div>
                <asp:Label for="txtDersAd" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <br />
            <div>
                <asp:Button ID="btnDersEkle" runat="server" Text="Ders Ekle" CssClass="btn btn-primary" OnClick="btnDersEkle_Click"></asp:Button>
            </div>
        </div>
    </form>
</asp:Content>

