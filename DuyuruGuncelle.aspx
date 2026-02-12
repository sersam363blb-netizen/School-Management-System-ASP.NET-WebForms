<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruGuncelle.aspx.cs" Inherits="DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">


    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="txtduyuruid" runat="server">Duyuru ID</asp:Label>
                <asp:TextBox ID="txtduyuruid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="txtduyurubaslik" runat="server">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="txtduyurubaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
                <textarea id="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />
            <br />
            <div>
                <asp:Button ID="btnduyuruguncelle" runat="server" Text="Guncelle" CssClass="btn btn-primary" OnClick="btnduyuruguncelle_Click"></asp:Button>
            </div>
        </div>
    </form>
</asp:Content>

