<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="schedule.aspx.cs" Inherits="Wk2Demo.schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <HeaderTemplate>
            <table>
                <thead>
                <tr>
                    <td>Day</td>
                    <td>Time</td>
                    <td>Class</td>
                    <td>Tutor</td>
                </tr>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>

                <tr>
                    <td><%#Eval("day") %></td>
                    <td><%#Eval("time") %></td>
                    <td><%#Eval("topic") %></td>
                    <td><%#Eval("tutor") %></td>
                    
                    <td><asp:LinkButton ID="LnkSelect" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="LnkSelect_Click">Select</asp:LinkButton></td>
                </tr>

        </ItemTemplate>
        <FooterTemplate>
                </tbody>
            </table>
        </FooterTemplate>
    </asp:DataList>
</asp:Content>
