﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to hide GroupSummary from GroupRowContent when GroupRow is expanded</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gv" runat="server" DataSourceID="ads" KeyFieldName="OrderID"
            AutoGenerateColumns="False">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="OrderID" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Quantity" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="2">
                    <PropertiesTextEdit DisplayFormatString="c" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Discount" VisibleIndex="3">
                    <PropertiesTextEdit DisplayFormatString="p0" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="4" GroupIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Supplier" ReadOnly="True" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="6" UnboundType="Decimal">
                    <PropertiesTextEdit DisplayFormatString="c" />
                </dx:GridViewDataTextColumn>
            </Columns>
            <Templates>
                <GroupRowContent>
                    <%# Container.GroupText %>
                    <dx:ASPxLabel ID="lbl" runat="server" Text='<%# String.Format("{0:c2}", gv.GetGroupSummaryValue(Container.VisibleIndex, gv.GroupSummary["UnitPrice"])) %>'
                        Visible='<%# !Container.Expanded %>'></dx:ASPxLabel>
                </GroupRowContent>
            </Templates>
            <GroupSummary>
                <dx:ASPxSummaryItem FieldName="UnitPrice" ShowInGroupFooterColumn="UnitPrice" SummaryType="Average" />
            </GroupSummary>
            <SettingsPager PageSize="20" />
            <Settings ShowGroupFooter="VisibleIfExpanded" />
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/Northwind.mdb"
            SelectCommand="SELECT * FROM [OrderDetails]"></asp:AccessDataSource>
    </form>
</body>
</html>
