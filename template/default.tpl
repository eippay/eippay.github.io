<!DOCTYPE html>

<html>
<head>
<link rel="Stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/default.css">
<link rel="shortcut icon" type="image/x-icon" href="images/firstoy.ico"/>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/highlight.pack.js"></script>
<script src="js/firstoy.js"></script>
<title>%title%</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
    <div id="body">

        <div id="header">
            <div class="head-left">　</div>
            %title%
            <div class="head-right">
                <input id="search"/>
                <img id="search-btn" src="images/search1.png"></img>
            </div>
        </div>
 

        <div id="search-result"> %content%</div>

        <div id="volid-cover"> </div>

    </div>

    <div id="footer">
        <div id="navigation"><hr /><p></p></div>
        <div id="footer-last">
            <div>最后更改:%date%</div>
            <div>本站内容按<a href="http://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0 许可协议</a>发布，转载请注明出处。</div>
        </div>
    </div>
<script type="text/javascript">
  var str_titles="js/all-titles.js";
  var str_search="js/search.js";
  function downloadJSAtOnload(str) {
    var element = document.createElement("script");
    element.src = str;
    document.body.appendChild(element);
  }
  if (window.addEventListener){
    window.addEventListener("load", downloadJSAtOnload(str_titles), false);
    window.addEventListener("load", downloadJSAtOnload(str_search), false);
  }
  else if (window.attachEvent){
    window.attachEvent("onload", downloadJSAtOnload(str_titles));
    window.attachEvent("onload", downloadJSAtOnload(str_search));
  }
  else {
      window.onload = downloadJSAtOnload(str_titles);
      window.onload = downloadJSAtOnload(str_search);
  }
</script>
</body>
</html>
