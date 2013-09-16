<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutoUpload.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-44051693-1', 'clipas.com.br');
        ga('send', 'pageview');

    </script>
    <link rel="Stylesheet" type="text/css" href="http://clipas.com.br/agent/CSS/uploadify.css" />
    <script type="text/javascript" src="http://clipas.com.br/agent/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="http://clipas.com.br/agent/scripts/jquery.uploadify.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: left; vertical-align: top">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    $(window).load(
        function () {
            $("#<%=FileUpload1.ClientID %>").fileUpload({
                'uploader': 'scripts/uploader.swf',
                //'cancelImg': 'images/cancel.png',
                'cancelImg': '',
                'buttonText': 'Procure arquivos',
                'script': 'Upload.ashx',
                'folder': 'uploads',
                'fileDesc': 'Image Files',
                'fileExt': '*.jpg;*.jpeg;*.gif;*.png',
                'multi': true,
                'auto': true
            });
        }
);
</script>
