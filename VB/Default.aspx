<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.3, Version=9.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxLoadingPanel" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v9.3, Version=9.3.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxLoadingPanel within ASPxPopupControl</title>

    <script language="javascript" type="text/javascript">
    var showPopup = true;
    var iframe;

    function OnPopupInit (s, e) {
       iframe = popup.GetContentIFrame();

       // the "load" event is fired when the content has been already loaded 
       ASPxClientUtils.AttachEventToElement(iframe, 'load', OnContentLoaded);
    }

    function OnPopupShown (s, e) {
        if (showPopup)
            lp.ShowInElement(iframe);
    }

    function OnContentLoaded (e) {
        showPopup = false;
        lp.Hide();
    }

    function OnButtonClick (s, e) {
       showPopup = true;
       popup.SetContentUrl(txt.GetText());           
       popup.Show();
    }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <b>Web site URL:</b>
                    </td>
                    <td>
                        <dx:ASPxTextBox ID="txt" ClientInstanceName="txt" runat="server" Width="250px" Text="TestPage.aspx">
                        </dx:ASPxTextBox>
                    </td>
                </tr>
            </table>
            <dx:ASPxLoadingPanel ID="lp" runat="server" ClientInstanceName="lp">
            </dx:ASPxLoadingPanel>
            <dx:ASPxPopupControl ID="popup" runat="server" AllowDragging="true" AllowResize="true"
                Height="400px" Width="600px" ClientInstanceName="popup" ContentUrl="javascript:void(0);"
                PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
                <ClientSideEvents Init="OnPopupInit" Shown="OnPopupShown" />
            </dx:ASPxPopupControl>
            <dx:ASPxButton ID="btn" runat="server" Text="Show the Site" AutoPostBack="false">
                <ClientSideEvents Click="OnButtonClick" />
            </dx:ASPxButton>
        </div>
    </form>
</body>
</html>