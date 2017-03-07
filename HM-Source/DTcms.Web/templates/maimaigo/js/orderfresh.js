$(function () {
    var page = 1;
    var discount = $('#thelist');
    var innerHeight = window.innerHeight;
    var timer2 = null;
    var tcount = 0;
    var uid = $('#uid').val();
    var baseurl = '/api/appfun.ashx?action=getorderlist&userid=' + uid + '&page_size=10&orderby=&page_index=';
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
                    arrText.push('<li>');
                    arrText.push('<em></em>');
                    arrText.push('<a href="' + t.detailurl + '">')
                    arrText.push('<div class="item-bd">');
                    arrText.push('<div class="thumb"><img src="' + t.img_url + '"></div>');
                    arrText.push('<div class="title">' + t.goodtitle + '</div>');
                    if (t.spectext == "") {
                        arrText.push('<div class="property">' + t.address + ' ' + t.accept_name + '</div>');
                    } else {
                        arrText.push('<div class="property">' + t.spectext + '</div>');
                    }
                    if (t.point <=0) {
                        arrText.push('<div class="price">共' + t.totalfee + '元<i>&nbsp;' + t.quantity + '件</i></div>');
                    }
                    else {
                        arrText.push('<div class="price">需支付' + t.totalfee + '元<i>&nbsp;麦豆抵扣' + t.point + '元</i></div>');
                    }
                    arrText.push('</div>');
                    arrText.push('</a>');
                    arrText.push('<div class="item-ft">');
                    arrText.push('<span class="time">购买时间：' + t.add_time + '</span>');
                    if (t.paysta != "2") {
                        if (t.ordersta == "4") {
                            arrText.push('<span class="status"><i>交易取消</i></span>');
                        }
                        else {
                            arrText.push('<span class="status"><a href="' + t.payurl + '" class="btn">立即支付</a></span>');
                        }
                    }
                    else {
                        if (t.ordersta == "1") {
                            arrText.push('<span class="status"><i>等待确认</i></span>');
                        }
                        if (t.ordersta == "2") {
                            if (t.expreddsta == "1") {
                                arrText.push('<span class="status"><i>等待发货</i></span>');
                            }
                            else {
                                arrText.push('<span class="status"><a href="javascript:;" onclick="sure_get(' + t.id + ')" class="btn">确认收货</a></span>');
                            }
                        }
                        if (t.ordersta == "3") {
                            arrText.push('<span class="status"><i>交易完成</i></span>');
                        }
                        if (t.ordersta == "4") {
                            arrText.push('<span class="status"><i>交易取消</i></span>');
                        }
                    }
                    arrText.push('</div>');
                    arrText.push('</li>');
                    tcount = t.totalcount;
                    if (10 * page < tcount) {
                        $(".pullUpLabel").html("上拉加载更多!");
                    }
                }

                discount.html(arrText.join(''));
            } else {
                $(".section-bd").attr("style", "display:none;");
                $(".pullUpLabel").html("暂无数据内容!");
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
                                arrText.push('<li>');
                                arrText.push('<em></em>');
                                arrText.push('<a href="' + t.detailurl + '">')
                                arrText.push('<div class="item-bd">');
                                arrText.push('<div class="thumb"><img src="' + t.img_url + '"></div>');
                                arrText.push('<div class="title">' + t.goodtitle + '</div>');
                                if (t.spectext == "") {
                                    arrText.push('<div class="property">' + t.address + ' ' + t.accept_name + '</div>');
                                } else {
                                    arrText.push('<div class="property">' + t.spectext + '</div>');
                                }
                                if (t.point <= 0) {
                                    arrText.push('<div class="price">共' + t.totalfee + '元<i>&nbsp;' + t.quantity + '件</i></div>');
                                }
                                else {
                                    arrText.push('<div class="price">需支付' + t.totalfee + '元<i>&nbsp;麦豆抵扣' + t.point + '元</i></div>');
                                }
                                arrText.push('</div>');
                                arrText.push('</a>');
                                arrText.push('<div class="item-ft">');
                                arrText.push('<span class="time">购买时间：' + t.add_time + '</span>');
                                if (t.paysta != "2") {
                                    if (t.ordersta == "4") {
                                        arrText.push('<span class="status"><i>交易取消</i></span>');
                                    }
                                    else {
                                        arrText.push('<span class="status"><a href="' + t.payurl + '" class="btn">立即支付</a></span>');
                                    }
                                }
                                else {
                                    if (t.ordersta == "1") {
                                        arrText.push('<span class="status"><i>等待确认</i></span>');
                                    }
                                    if (t.ordersta == "2") {
                                        if (t.expreddsta == "1") {
                                            arrText.push('<span class="status"><i>等待发货</i></span>');
                                        }
                                        else {
                                            arrText.push('<span class="status"><a href="javascript:;" onclick="sure_get(' + t.id + ')" class="btn">确认收货</a></span>');
                                        }
                                    }
                                    if (t.ordersta == "3") {
                                        arrText.push('<span class="status"><i>交易完成</i></span>');
                                    }
                                    if (t.ordersta == "4") {
                                        arrText.push('<span class="status"><i>交易取消</i></span>');
                                    }
                                }
                                arrText.push('</div>');
                                arrText.push('</li>');
                                tcount = t.totalcount;
                                if (10 * page < tcount) {
                                    $(".pullUpLabel").html("上拉加载更多!");
                                }
                            }
                            discount.append(arrText.join(''));
                        } else {
                            //$(".load").remove();
                            $(".pullUpLabel").html("没有更多数据.");
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
            $(".pullUpLabel").html("没有更多数据.");
        }
    })
});