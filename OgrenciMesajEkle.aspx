<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.master" AutoEventWireup="true" CodeFile="OgrenciMesajEkle.aspx.cs" Inherits="OgrenciMesajEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    

     <form id="Form2" runat="server">
 
 <div class="form-group">
     <br />
     <div>
         <asp:Label for="txtAlici" runat="server">Alıcı</asp:Label>
         <asp:TextBox ID="txtAlici" runat="server" CssClass="form-control"></asp:TextBox>
     </div>
     <br />
     <div>
         <asp:Label for="txtMesajBaslik" runat="server">Mesaj Başlık</asp:Label>
          <asp:TextBox ID="txtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
     </div>
       <br />
     <div>
        <asp:Label for="txtMesajIcerik" runat="server">Mesaj İçerik</asp:Label>
         <textarea id="txtMesajIcerik" cols="20" rows="6" class="form-control"  runat="server"></textarea>
     </div>
     <br />
     <br />
     <div>
         <asp:Button ID="btnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-primary" OnClick="btnGonder_Click"> </asp:Button>
     </div>
 </div>
 </form>

</asp:Content>

