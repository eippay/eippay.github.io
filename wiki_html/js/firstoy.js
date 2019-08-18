$(document).ready(function(){
    $('pre').each(function(i, e){hljs.highlightBlock(e)});
    // 如果不是首页，则添加 导航 链接
    if ($("div#header").text().replace(/(^\s*)|(\s*$)/g,"") != "FIRSTOY") {
        $("div#search-result").children("p").last().each(function(){
            var str=$(this).html();
            var test=str.match('<a href=".*">.*</a>');
            if (test != null){
                $(this).append('<a href="index.html" id="index">导航&gt;&gt;</a>');

                //$(this).css("border-top","1px solid #4cbce7");
                $("div#navigation").empty();
                $("div#navigation").append("<hr />");
                $("div#navigation").append($(this));
            }
        });
    }

    // 添加来必力评论系统
    if ($("div#header").text().replace(/(^\s*)|(\s*$)/g,"") != "FIRSTOY") {
        $("div#search-result").append("<div id=\"lv-container\" data-id=\"city\" data-uid=\"MTAyMC80NjEzOS8yMjY1MA==\"> <script type=\"text/javascript\"> (function(d, s) { var j, e = d.getElementsByTagName(s)[0]; if (typeof LivereTower === 'function') { return; } j = d.createElement(s); j.src = 'https://cdn-city.livere.com/js/embed.dist.js'; j.async = true; e.parentNode.insertBefore(j, e); })(document, 'script'); </script> </div>");
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

    // 如果第一个元素是表格，则添加标题下划线
    $("table:first").each(function(){
        if ($(this).index() <= 2) {
            $("#header").css("border-bottom","1px solid #4cbce7");
        }
    });


    // 导航粘在页面底部
    //$("hr").last().each(function(){
        //if ($(this).index() > 2){
            //$(this).before('<div id="push"></div>');
        //} 
    //});

})

