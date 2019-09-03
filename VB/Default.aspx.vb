
Imports System.IO
Imports DevExpress.XtraRichEdit

Partial Class _Default
    Inherits System.Web.UI.Page
    Const rtf As String = "{\rtf1\deff0{\fonttbl{\f0 Calibri;}{\f1 Times New Roman;}}{\colortbl ;\red0\green0\blue255 ;\red255\green0\blue0 ;}{\*\defchp \f1}{\stylesheet {\ql\f1 Normal;}{\*\cs1\f1 Default Paragraph Font;}{\*\cs2\sbasedon1\f1 Line Number;}{\*\cs3\ul\f1\cf1 Hyperlink;}{\*\ts4\tsrowd\f1\ql\tscellpaddfl3\tscellpaddl108\tscellpaddfb3\tscellpaddfr3\tscellpaddr108\tscellpaddft3\tsvertalt\cltxlrtb Normal Table;}{\*\ts5\tsrowd\sbasedon4\f1\ql\trbrdrt\brdrs\brdrw10\trbrdrl\brdrs\brdrw10\trbrdrb\brdrs\brdrw10\trbrdrr\brdrs\brdrw10\trbrdrh\brdrs\brdrw10\trbrdrv\brdrs\brdrw10\tscellpaddfl3\tscellpaddl108\tscellpaddfr3\tscellpaddr108\tsvertalt\cltxlrtb Table Simple 1;}}{\*\listoverridetable}{\info{\operator Humberg, Gerrit}{\creatim\yr2017\mo1\dy16\hr15\min31}{\revtim\yr2017\mo1\dy17\hr15\min4}{\version4}}\nouicompat\splytwnine\htmautsp\sectd\marglsxn284\margrsxn284\margtsxn0\margbsxn0\pard\plain\ql\sl275\slmult1\sa200{\fs22\cf0 This is the sample text with }{\b\fs22\cf0 bold }{\fs22\cf0 and }{\fs22\cf2 red}{\fs22\cf0  wor}{\fs22\cf0 ds.}\lang7\langfe7\fs22\par}"
    Protected Sub ASPxRichEdit1_Callback(sender As Object, e As DevExpress.Web.CallbackEventArgsBase)
        Dim memoryStream = New MemoryStream()
        ASPxRichEdit1.SaveCopy(memoryStream, DocumentFormat.Rtf)
        memoryStream.Position = 0

        Dim server = New RichEditDocumentServer()
        server.LoadDocument(memoryStream, DocumentFormat.Rtf)
        Dim pos = server.Document.CreatePosition(Convert.ToInt32(e.Parameter))
        server.Document.InsertRtfText(pos, rtf)

        memoryStream = New MemoryStream()
        server.SaveDocument(memoryStream, DocumentFormat.Rtf)
        ASPxRichEdit1.Open(Guid.NewGuid().ToString(), DocumentFormat.Rtf, Function() memoryStream.ToArray())
    End Sub
    Protected Sub ASPxRichEdit1_CustomJSProperties(sender As Object, e As DevExpress.Web.CustomJSPropertiesEventArgs)
        e.Properties("cpRtf") = rtf
    End Sub
End Class
