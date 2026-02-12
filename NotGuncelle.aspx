<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <%--<div>
                <asp:Label for="txtDersAdı" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersAdı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />--%>
            <div>
                <asp:Label for="txtOgrenciID" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="txtOgrenciID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOgrAdSoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="txtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSinav1" runat="server">Sınav 1</asp:Label>
                <asp:TextBox ID="txtSinav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSinav2" runat="server">Sınav 2</asp:Label>
                <asp:TextBox ID="txtSinav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtSinav3" runat="server">Sınav 3</asp:Label>
                <asp:TextBox ID="txtSinav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtOrtalama" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btnhesapla" runat="server" Text="Hesapla" CssClass="btn btn-secondary" OnClick="btnhesapla_Click"></asp:Button>
                <asp:Button ID="btGuncelle" runat="server" Text="Guncelle" CssClass="btn btn-primary" OnClick="btGuncelle_Click"></asp:Button>
            </div>
        </div>
    </form>
</asp:Content>

