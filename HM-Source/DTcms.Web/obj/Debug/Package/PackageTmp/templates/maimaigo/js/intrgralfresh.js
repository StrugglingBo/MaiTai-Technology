$(function () {
    var page = 1;
    var discount = $('#thelist');
    var innerHeight = window.innerHeight;
    var timer2 = null;
    var tcount = 0;
    var cid = $('#cid').val();
    var baseurl = '/api/appfun.ashx?action=getgoodslist&channel_name=userpoint&category_id=' + cid + '&page_size=10&strwhere=&orderby=&page_index=';
    $.ajax({
        url: baseurl + page,
        type: 'GET',
        dataType: 'json',
        timeout: '1000',
        cache: 'false',
        success: function (data) {
            if (data.success == "true") {
                var arrText = [];
                for (var i = 0, t; t = data.list[i++]; ) {
                    arrText.push('<li><span class="thumb">');
                    arrText.push('<a href="' + t.aurl + '">');
                    arrText.push('<img src="' + t.img_url + '">');
                    arrText.push('</a></span><span class="title">' + t.title);
                    arrText.push('<a href="' + t.aurl + '"></a></span>');
                    arrText.push('<span class="price">￥' + t.sell_price + '+'+t.sell_point+'麦豆</span></li>');
                    tcount = t.totalcount;
                    if (10 * page < tcount) {
                        $(".pullUpLabel").html("上拉加载更多!");
                    }
                }
                discount.html(arrText.join(''));
            } else {
                $(".section-bd").attr("style", "display:none;");
                $(".pullUpLabel").html("暂无产品数据!");
            }
        }
    });
    var ajax_getting = false;
    $(window).scroll(function () {
        var nowcount = 10 * page;
        if (nowcount < tcount) {
            var scrollTop = $(document.body).scrollTop();
            var scrollHeight = $('body').height();
            var windowHeight = innerHeight;
            var scrollWhole = Math.max(scrollHeight - scrollTop - windowHeight);
            if (scrollTop >= $(document).height() - $(window).height() - 120) {

                if (ajax_getting) {
                    return false;
                } else {
                    ajax_getting = true;
                }
                //discount.append('<div class="load"><img src="/lightapp/static/zhida-yunying/img/load.gif" width="6%" /></div>');
                //$("#pullUp").show();
                $(".pullUpLabel").html("数据加载中...");
                $('html,body').scrollTop($(window).height() + $(document).height());
                page++;
                $.ajax({
                    url: baseurl + page,
                    type: 'GET',
                    dataType: 'json',
                    success: function (data) {
                        if (data.success == "true") {
                            var arrText = [];
                            for (var i = 0, t; t = data.list[i++]; ) {
                                arrText.push('<li><span class="thumb">');
                                arrText.push('<a href="' + t.aurl + '">');
                                arrText.push('<img src="' + t.img_url + '">');
                                arrText.push('</a></span><span class="title">' + t.title);
                                arrText.push('<a href="' + t.aurl + '"></a></span>');
                                arrText.push('<span class="price">￥' + t.sell_price + '+' + t.sell_point + '麦豆</span></li>');
                                tcount = t.totalcount;
                                if (10 * page < tcount) {
                                    $(".pullUpLabel").html("上拉加载更多!");
                                }
                            }
                            discount.append(arrText.join(''));
                        } else {
                            //$(".load").remove();
                            $(".pullUpLabel").html("没有更多产品.");
                            $(window).unbind('scroll');
                        };
                        ajax_getting = false;
                    }
                });
            };
            //$(".load").remove();
            if (10 * page < tcount) {
                $(".pullUpLabel").html("上拉加载更多!");
            }
            else {
                $(".pullUpLabel").html("");
            }
        }
        else {
            //$(".no-data").remove();
            //discount.append('<div class="no-data">没有更多数据。</div>');
            $(".pullUpLabel").html("没有更多产品.");
        }
    })
});