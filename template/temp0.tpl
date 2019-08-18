<!DOCTYPE html>
<html>
<head>
<link rel="Stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/atelier-lakeside-dark.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/highlight.pack.js"></script>
<script>
    $(document).ready(function(){
        $('pre').each(function(i, e){hljs.highlightBlock(e)});
    })
</script>
<title>%title%</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
    <div class="header">
    </div>

    <div class="body">
        <div id="%title%"><h1 id="%title%" class="justcenter"> %title%</h1></div>
        %content%
    </div>

    <div class="footer">
        <p><small>Page created on %date%</small></p>
        <p><small>本站内容按<a href="http://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0 许可协议</a>发布，转载请注明出处。</small></p>
    </div>
</body>
</html>
