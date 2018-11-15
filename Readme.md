<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxRichEdit - How to insert RTF text to a document


<p>Currently, ASPxRichEdit doesn't provide a functionality to insert RTF formatted text on the client side so that this format is applied automatically. This example demonstrates a workaround that allows you to insert formatted RTF text to the current document on a button click via an ASPxRichEdit callback.<br><br>To implement this scenario, initiate an ASPxRichEdit custom callback via the client-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditScriptsASPxClientRichEdit_PerformCallbacktopic">ASPxClientRichEdit.PerformCallback</a> method and handle the server-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditASPxRichEdit_Callbacktopic">ASPxRichEdit.Callback</a> event. To add the required text in this event handler, you can use the <a href="https://documentation.devexpress.com/#CoreLibraries/DevExpressXtraRichEditAPINativeSubDocument_AppendRtfTexttopic%28aumT6w%29">AppendRtfText</a> method of our non-visual <a href="https://documentation.devexpress.com/#CoreLibraries/clsDevExpressXtraRichEditRichEditDocumentServertopic"><strong>RichEditDocumentServer</strong></a> component.<br>To insert this text at the current caret position in the middle of a document text, obtain this position on the client side by using the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditScriptsRichEditSelection_intervalstopic">RichEditSelection.intervals</a> array object and pass it to the server as a parameter of the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxRichEditScriptsASPxClientRichEdit_PerformCallbacktopic">ASPxClientRichEdit.PerformCallback</a> method. Then, access this passed value in the server-side Callback event handler and use it to modify the current document position via the <a href="https://documentation.devexpress.com/CoreLibraries/DevExpress.XtraRichEdit.API.Native.SubDocument.CreatePosition.method">Document.CreatePosition</a> method before inserting RTF text.</p>

<br/>


