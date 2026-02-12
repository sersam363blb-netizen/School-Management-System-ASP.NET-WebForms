<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciBul.aspx.cs" Inherits="OgrenciBul" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="form1" runat="server">

        <div>
            <asp:Label for="txtOgrenciBul" runat="server">Öğrenci Numarası</asp:Label>
            <asp:TextBox ID="txtOgrenciBul" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Button ID="btnOgrenciBul" runat="server" Text="Öğrenci Bul" CssClass="btn btn-primary" OnClick="btnOgrenciBul_Click"></asp:Button>
        </div>
        <br />
        <div>
            <asp:Label for="txtogrenciadsoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
            <asp:TextBox ID="txtogrenciadsoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label for="txtogrencisifresi" runat="server">Öğrenci Şifresi</asp:Label>
            <asp:TextBox ID="txtogrencisifresi" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label for="txtogrencimail" runat="server">Öğrenci Mail</asp:Label>
            <asp:TextBox ID="txtogrencimail" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            <br />
        </div>
        <div>
            <asp:Label for="txtogrencitelefon" runat="server">Öğrenci Telefon</asp:Label>
            <asp:TextBox ID="txtogrencitelefon" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            <br />
        </div>
    </form>

</asp:Content>

