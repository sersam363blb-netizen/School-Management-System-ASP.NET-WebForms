<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.master" AutoEventWireup="true" CodeFile="OgrenciDefault.aspx.cs" Inherits="OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="form1" runat="server">
        <div>
            <h2>Profilim</h2>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false">Numara:</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false">Ad Soyad</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false">Mail Adresi</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false">Telefon</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false">Şifre</asp:TextBox>
            <br />
             <asp:Button ID="btnguncelle" runat="server" Text="Guncelle" CssClass="btn btn-primary" OnClick="btnguncelle_Click" ></asp:Button>
            <br />
        </div>
    </form>

</asp:Content>

