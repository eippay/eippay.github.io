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
        // 如果不是首页，则添加 导航 链接
        if ($("div#header").text().replace(/(^\s*)|(\s*$)/g,"") != "导航") {
            $("div#body").children("p").last().append('<a href="index.html" id="index">导航</a>');
        }

        // 所有表格第一个单元格背景为灰色
        $("tbody").children().each(function(){
                if ($(this).index() == 0){
                $(this).children().each(function(){
                        if ($(this).index() == 0) {
                        $(this).css("background-color","#f0f0f0");
                        $(this).css("font-weight","bold");
                        }
                        });
                }
                });

        // 所有表格第一行居中对齐
        $("tbody").children().each(function(){
            if ($(this).index() == 0){
                $(this).children().css("text-align","center");
            }
        });

    })


</script>
<title>%title%</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
    <div id="header">
    %title%
    </div>

    <div id="body">
        %content%
    </div>

    <div id="footer">
        <div>Page created on %date%</div>
        <div>本站内容按<a href="http://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0 许可协议</a>发布，转载请注明出处。</div>
    </div>
</body>
</html>
