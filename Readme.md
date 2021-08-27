<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128545407/16.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T532651)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxRichEdit - How to insert RTF text to a document
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t532651/)**
<!-- run online end -->

<p>Starting with version 18.1, the ASPxRichEdit control provides the <a href="https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditCommands.insertRtf">insertRtf</a> command, which allows you to add formatted RTF content at the specified position.
</p>
<p>In versions prior to 18.1, ASPxRichEdit doesn't provide a functionality to insert RTF formatted text on the client side so that this format is applied automatically. This example demonstrates a workaround that allows you to insert formatted RTF text to the current document on a button click via an ASPxRichEdit callback.<br><br>To implement this scenario, initiate an ASPxRichEdit custom callback via the client-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditScriptsASPxClientRichEdit_PerformCallbacktopic">ASPxClientRichEdit.PerformCallback</a> method and handle the server-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditASPxRichEdit_Callbacktopic">ASPxRichEdit.Callback</a> event. To add the required text in this event handler, you can use the <a href="https://documentation.devexpress.com/#CoreLibraries/DevExpressXtraRichEditAPINativeSubDocument_AppendRtfTexttopic%28aumT6w%29">AppendRtfText</a> method of our non-visual <a href="https://documentation.devexpress.com/#CoreLibraries/clsDevExpressXtraRichEditRichEditDocumentServertopic"><strong>RichEditDocumentServer</strong></a> component.<br>To insert this text at the current caret position in the middle of a document text, obtain this position on the client side by using the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditScriptsRichEditSelection_intervalstopic">RichEditSelection.intervals</a> array object and pass it to the server as a parameter of the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditScriptsASPxClientRichEdit_PerformCallbacktopic">ASPxClientRichEdit.PerformCallback</a> method. Then, access this passed value in the server-side Callback event handler and use it to modify the current document position via the <a href="https://documentation.devexpress.com/CoreLibraries/DevExpress.XtraRichEdit.API.Native.SubDocument.CreatePosition.method">Document.CreatePosition</a> method before inserting RTF text.</p>
<br/>
