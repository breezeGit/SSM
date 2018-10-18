//adminTable.jsp页面自定义js文件
$(document).ready(function(){

    //时间区间对应值（在NewsServiceImpl中应用）
    //0---全部
    //1---近3天
    //2---近1周
    //3---近1月
    var time=0;
    //访问数据方法
    function to_page(pn){
        $.ajax({
            url:"/admin/newsList",
            data:{
                "pn":pn,
                "timeInterval":time
            },
            type:"POST",
            success:function(result){
                $("#btnSearch").removeClass('normal');
                $("#news_table tbody").html("");
                var str=JSON.parse(result);
                //1:解析并显示员工数据。
                bindDataAndView(str);
                //分页信息
                build_page_nav(str);
                //分页条信息。
                build_page_fenyetiao(str);
            },
            error:function () {
                $("#btnSearch").removeClass('normal');
            }
        });
    }
    //搜索点击方法
    $("#btnSearch").click(function () {
        var searchBtn=$("#btnSearch");
        var val=$('input:radio[name="time"]:checked').val();
        switch (val){
            //查询全部
            case "0":
                searchBtn.addClass('normal');
                time=0;
                to_page(1);
                break;
            //近三天
            case "1":
                searchBtn.addClass('normal');
                time=1;
                to_page(1);
                break;
            //近一周
            case "2":
                searchBtn.addClass('normal');
                time=2;
                to_page(1);
                break;
            //近一月
            case "3":
                searchBtn.addClass('normal');
                time=3;
                to_page(1);
                break;
            //默认查询全部
            default:
                searchBtn.addClass('normal');
                time=0;
                to_page(1);
                break;
        }



    });

    //解析数据并显示到表格中
    function bindDataAndView(str) {
        var temp=str.map.pageInfo.list;
        $.each(temp,function (index,item) {
            var newsId=$("<td></td>").append(item.news_id).addClass("text-center");
            var newsTitle=$("<td></td>").append(item.news_title).addClass("text-center");
            var newsContent=$("<td></td>").append(item.news_content).addClass("text-center");
            var newsDate=$("<td></td>").append(formatDatebox(item.news_date)).addClass("text-center");
            var newsImgs=$("<td></td>").append(item.news_img1).addClass("text-center");
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            var td_btn=$("<td></td>").append(editBtn).append(delBtn).addClass("text-center");
            $("<tr></tr>").append(newsId)
                .append(newsTitle)
                .append(newsContent)
                .append(newsDate)
                .append(newsImgs)
                .append(td_btn)
                .appendTo("#news_table tbody");
        })
    }

    //时间格式化方法
    function formatDatebox(value) {
        if (value == null || value == '') {
            return '';
        }
        var dt;
        if (value instanceof Date) {
            dt = value;
        } else {

            dt = new Date(value);

        }

        return dt.format("yyyy-MM-dd hh:mm:ss"); //扩展的Date的format方法(上述插件实现)
    }

    //时间格式化方法
    Date.prototype.format = function(format) {
        var o = {
            "M+": this.getMonth() + 1, // month
            "d+": this.getDate(), // day
            "h+": this.getHours(), // hour
            "m+": this.getMinutes(), // minute
            "s+": this.getSeconds(), // second
            "q+": Math.floor((this.getMonth() + 3) / 3), // quarter
            "S": this.getMilliseconds()
            // millisecond
        }
        if (/(y+)/.test(format))
            format = format.replace(RegExp.$1, (this.getFullYear() + "")
                .substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(format))
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        return format;
    }


    /**********************************************************  分页处理开始  *********************************************************************/


    //这个方法是显示分页信息的。
    function build_page_nav(result){
        //每次构建前，都要清空。
        $("#page_xinxi").empty();
        $("#page_xinxi").append("当前"+result.map.pageInfo.pageNum+"页，总"+
            result.map.pageInfo.pages+"页，总"+
            result.map.pageInfo.total+"条"
        );
    }

    //处理分页数据
    function build_page_fenyetiao(result){
        //每次构建的时候都要清空。只显示想要展示的数据。
        $("#page_fenyetiao").empty();
        var ul=$("<ul></ul>").addClass("pagination");


        //1:定义首页
        var frist=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        //设置跳转到首页

        //2:定义前一页
        var qianYiYe=$("<li></li>").append($("<a></a>").append("&laquo;"));
        //去判断是否有前一页，如果有前一页，不可以选定。
        if(result.map.pageInfo.hasPreviousPage == false){
            frist.addClass("disabled");
            qianYiYe.addClass("disabled");
        }else{
            frist.click(function(){
                to_page(1);
            });
            qianYiYe.click(function(){
                to_page(result.map.pageInfo.pageNum-1);
            });
        }
        //在ul下添加首页和前一页的信息。
        ul.append(frist).append(qianYiYe);
        //3:定义分页条
        $.each(result.map.pageInfo.navigatepageNums,function(index,item){

            var numLi=$("<li></li>").append($("<a></a>").append(item));
            //pageInfo里的pageNum和当前页一样的时候，我们会标记出来。标深。
            if(result.map.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            //为numLi添加一个事件。
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        //4:定义后一页
        var houYiYe=$("<li></li>").append($("<a></a>").append("&raquo;"));
        //5:定义末页
        var last=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        ////去判断是否有下一页，如果没有下一页，不可以选定。
        if(result.map.pageInfo.hasNextPage == false){
            houYiYe.addClass("disabled");
            last.addClass("disabled");
        }else{
            houYiYe.click(function(){
                to_page(result.map.pageInfo.pageNum+1);
            });
            last.click(function(){
                to_page(result.map.pageInfo.pages);
            });
        }

        //把后一页和末页也添加上。
        ul.append(houYiYe).append(last);
        //定义nav标签。并添加上ul标签
        var nav=$("<nav></nav>").append(ul);
        nav.appendTo("#page_fenyetiao");
    }
});