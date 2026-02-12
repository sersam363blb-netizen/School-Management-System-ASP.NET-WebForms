<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruEkle.aspx.cs" Inherits="DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


     <form id="Form2" runat="server">
 
 <div class="form-group">
     <div>
         <asp:Label for="DropDownList1" runat="server">Duyuru Öğretmen</asp:Label>
         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
     </div>
     <br />
     <div>
         <asp:Label for="txtDuyurBaslik" runat="server">Duyuru Başlık</asp:Label>
         <asp:TextBox ID="txtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
     </div>
     <br />
     <div>
         <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
         <textarea id="TextArea1" cols="20" rows="6" class="form-control"  runat="server"></textarea>
     </div>
     <br />
     <br />
     <div>
         <asp:Button ID="btnDuyuruEkle" runat="server" Text=" Duyuru Ekle" CssClass="btn btn-primary" OnClick="btnDuyuruEkle_Click"> </asp:Button>
     </div>
 </div>
 </form>

</asp:Content>

