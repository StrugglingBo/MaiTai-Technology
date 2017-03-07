$(function () {
    var page = 1;
    var discount = $('#thelist');
    var innerHeight = window.innerHeight;
    var timer2 = null;
    var tcount = 0;
    var uid = $('#uid').val();
    var dotype = $('#dotype').val();
    var baseurl = '/api/appfun.ashx?action=getGrouplist&uid=' + uid + '&level=' + dotype + '&page_size=100&page_index=';
    $.ajax({
        url: baseurl + page,
        type: 'GET',
        dataType: 'json',
        timeout: '10000',
        cache: 'true',
        success: function (data) {
            if (data.success == "true") {
                var arrText = [];
                for (var i = 0, t; t = data.list[i++]; ) {
                    arrText.push(' <ul class="group-item">');
                    arrText.push('<li class="item">');
                    arrText.push('<span class="thumb"><img src="' + t.avatar + '"></span>');
                    arrText.push('<span class="desc">');
                    if (dotype == 1) {
                        arrText.push('<span class="user">手机号：' + t.mobile + '</span>');
                    }
                    else {
                        var phone = t.mobile.substr(0, 3) + "****" + t.mobile.substr(7, 4);
                        arrText.push('<span class="user">手机号：' + phone + '</span>');
                    }
                    arrText.push(' <span>推荐人：' + t.nick_name + '</span>');
                    arrText.push(' <span>注册时间：' + t.reg_time + '</span></span>');
                    if (t.group_id == 2) {
                        arrText.push(' <span class="isvip">VIP</span>');
                    }
                    else {
                        if (t.qq == "1") {
                            arrText.push(' <span class="isbuyvip">VIP</span>');
                        }
                        else if (t.msn == "1") {
                            arrText.push(' <span class="isordervip">VIP</span>');
                        }
                        else {
                            arrText.push(' <span class="novip">VIP</span>');
                        }
                    }
                    arrText.push(' </li>');
                    arrText.push(' </ul>');
                    tcount = t.totalcount;
                    if (100 * page < tcount) {
                        $(".pullUpLabel").html("上拉加载更多!");
                    }
                }
                discount.html(arrText.join(''));
            } else {
                $(".section-bd").attr("style", "display:none;");

                if (dotype == 1) {
                    $(".pullUpLabel").html("暂无团队成员数据!<br/><a href='/qrcode.html' class='tjbtn' style='color:#fff;'>立即推广</a>");
                }
                else {
                    $(".pullUpLabel").html("暂无团队成员数据!<br/>");
                }

            }
        }
    });
    var ajax_getting = false;
    $(window).scroll(function () {
        var nowcount = 100 * page;
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
                                arrText.push(' <ul class="group-item">');
                                arrText.push('<li class="item">');
                                arrText.push('<span class="thumb"><img src="' + t.avatar + '"></span>');
                                arrText.push('<span class="desc">');
                                if (dotype == 1) {
                                    arrText.push('<span class="user">手机号：' + t.mobile + '</span>');
                                }
                                else {
                                    var phone = t.mobile.substr(0, 3) + "****" + t.mobile.substr(7, 4);
                                    arrText.push('<span class="user">手机号：' + phone + '</span>');
                                }
                                arrText.push(' <span>推荐人：' + t.nick_name + '</span>');
                                arrText.push(' <span>注册时间：' + t.reg_time + '</span></span>');
                                if (t.group_id == 2) {
                                    arrText.push(' <span class="isvip">VIP</span>');
                                }
                                else {
                                    if (t.qq == "1") {
                                        arrText.push(' <span class="isbuyvip">VIP</span>');
                                    }
                                    else if (t.msn == "1") {
                                        arrText.push(' <span class="isordervip">VIP</span>');
                                    }
                                    else {
                                        arrText.push(' <span class="novip">VIP</span>');
                                    }
                                }
                                arrText.push(' </li>');
                                arrText.push(' </ul>');
                                tcount = t.totalcount;
                                if (10 * page < tcount) {
                                    $(".pullUpLabel").html("上拉加载更多!");
                                }
                            }
                            discount.append(arrText.join(''));
                        } else {
                            //$(".load").remove();
                            $(".pullUpLabel").html("没有更多团队成员.");
                            $(window).unbind('scroll');
                        };
                        ajax_getting = false;
                    },
                    Error: function (data) {
                        alert(data);
                    }
                });
            };
            //$(".load").remove();
            if (100 * page < tcount) {
                $(".pullUpLabel").html("上拉加载更多!");
            }
            else {
                $(".pullUpLabel").html("");
            }
        }
        else {
            //$(".no-data").remove();
            //discount.append('<div class="no-data">没有更多数据。</div>');
            $(".pullUpLabel").html("没有更多团队成员.");
        }
    })
});