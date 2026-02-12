<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.master" AutoEventWireup="true" CodeFile="OgrenciDuyurular.aspx.cs" Inherits="OgrenciDuyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     
    <table class="table table-bordered table-hover">

        <tr>

            <th scope="col">Gönderen</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            


        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>

                        
                        <td><%# Eval("GONDEREN") %></td>
                        <td><%# Eval("DUYURUBASLIK") %></td>
                        <td><%# Eval("DUYURUICERIK") %></td>
                        

                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
</asp:Content>

