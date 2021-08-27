<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128540585/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4304)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to hide GroupSummary from GroupRowContent when GroupRow is expanded
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4304/)**
<!-- run online end -->


<p>You can use the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewTemplates_GroupRowContenttopic"><u>GroupRowContent</u></a> template to hide a GroupSummary when a <a href="http://documentation.devexpress.com/#AspNet/CustomDocument3681"><u>GroupRow</u></a> is expanded.</p><p>First, place ASPxLabel into the ASPxGridView GroupRowContent template. Then assign the ASPxLabel.Text property to the GroupSummary value and switch the ASPxLabel.Visible property depending on GroupRow expanding.</p>

<br/>


