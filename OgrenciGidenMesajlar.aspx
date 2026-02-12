<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.master" AutoEventWireup="true" CodeFile="OgrenciGidenMesajlar.aspx.cs" Inherits="OgrenciGidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        
    <table class="table table-bordered table-hover">

        <tr>

            <th scope="col">Alıcı</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>


        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>

                        <td><%# Eval("ADSOYAD") %></td>
                        <td><%# Eval("BASLIK") %></td>
                        <td><%# Eval("ICERIK") %></td>
                        <td><%# Eval("TARIH") %></td>

                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>

