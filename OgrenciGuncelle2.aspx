<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.master" AutoEventWireup="true" CodeFile="OgrenciGuncelle2.aspx.cs" Inherits="OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <form id="form1" runat="server">
        <div>
            <h2>Profili Güncelle</h2>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Numara:</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Ad Soyad</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control">Mail Adresi</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control">Telefon</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control">Şifre</asp:TextBox>
            <br />
             <asp:Button ID="btnguncelle" runat="server" Text="Guncelle" CssClass="btn btn-success" OnClick="btnguncelle_Click"  ></asp:Button>
            <br />
        </div>
    </form>

</asp:Content>

