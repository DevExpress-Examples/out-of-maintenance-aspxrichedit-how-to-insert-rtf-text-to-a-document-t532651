<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxRichEdit - How to insert RTF text to a document</title>
    <script type="text/javascript">
        function onClientButtonClick(s, e) {
            var startPosition = richEdit.selection.intervals[0].start;
            var rtf = richEdit.cpRtf;
            richEdit.commands.insertRtf.execute(rtf, startPosition);
        }

        function onServerButtonClick(s, e) {
            var startPosition = richEdit.selection.intervals[0].start;
            richEdit.PerformCallback(startPosition);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxRichEdit ID="ASPxRichEdit1" ClientInstanceName="richEdit" runat="server" WorkDirectory="~\App_Data\WorkDirectory" 
            OnCallback="ASPxRichEdit1_Callback"
            OnCustomJSProperties="ASPxRichEdit1_CustomJSProperties">
            <Settings>
                <Behavior CreateNew="Hidden" Save="Hidden" Open="Hidden" SaveAs="Hidden" />
            </Settings>
        </dx:ASPxRichEdit>

        <dx:ASPxButton runat="server" ID="clientButton" Text="Insert RTF text on the client side" AutoPostBack="false">
            <ClientSideEvents Click="onClientButtonClick" />
        </dx:ASPxButton>

        <dx:ASPxButton runat="server" ID="serverButton" Text="Insert RTF text on the server side" AutoPostBack="false">
            <ClientSideEvents Click="onServerButtonClick" />
        </dx:ASPxButton>
    </div>
    </form>
</body>
</html>
