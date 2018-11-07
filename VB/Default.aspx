<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v16.2, Version=16.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	 <script>
	  var startPosition = -1;
	  function OnClick(s, e) {
	   startPosition = rich.selection.intervals[0].start;
	   rich.PerformCallback(startPosition);
	  }
	</script>
</head>
<body>
	<form id="form1" runat="server">
	 <dx:ASPxRichEdit ID="ASPxRichEdit1" ClientInstanceName="rich" runat="server" WorkDirectory="~\App_Data\WorkDirectory" OnCallback="ASPxRichEdit1_Callback">
	  <Settings>
	   <Behavior CreateNew="Hidden" Save="Hidden" Open="Hidden" SaveAs="Hidden" />
	  </Settings>
	 </dx:ASPxRichEdit>

	 <dx:ASPxButton runat="server" ID="addButton" Text="Insert formatted RTF text" AutoPostBack="false">
	  <ClientSideEvents Click="OnClick" />
	 </dx:ASPxButton>
	</form>
</body>
</html>