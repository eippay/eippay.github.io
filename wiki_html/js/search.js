$(document).ready(function(){
    var i;
    var search_result = "";
    var str_match="";
    // 网站文件名存放在all_titles数组中
    // search 将匹配 input 与 all_titles 
    function search() {
        search_result="";
        str_match=$("input#search").val();
         
        search_result = "<ul>"; 
        var result_number=0;
        for (i=0;i<all_titles.length;i++){
            if (all_titles[i].toUpperCase().match(str_match.toUpperCase())){
            search_result=search_result+"<li class='search-li'><a href=\""+all_titles[i]+".html\">"+all_titles[i]+"</a></li>";
                result_number=result_number+1;
            }
            // 当结果多于88个时，增大body大小
            if (result_number > 88){
                //break;
            }
        }
       search_result = search_result + "</ul>"; 
       if (search_result.length > 9){ 
            $("#header").css("border-bottom","1px solid #4cbce7");
            $("div#search-result").empty();
            $("div#search-result").append(search_result);
       }else{
            $("div#search-result").before(str_match + " 去火星旅游了...");
       }
 
    }
    // 单击搜索键时执行搜索
    $("#search-btn").click(function(){
       search(); 
    });
    // 在input中回车时执行搜索
    $("input#search").keydown(function(event){
        if (event.keyCode == 13){
            search();
        }
    });

for (i=0;i<all_titles.length;i++)
{
    //document.write(all_titles[i] + "<br>");
}

})

