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


