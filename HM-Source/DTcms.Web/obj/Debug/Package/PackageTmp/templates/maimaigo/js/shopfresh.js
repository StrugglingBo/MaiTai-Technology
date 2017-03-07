$(function () {
    var tkey = GetQueryString("city");
    if (tkey != "") {
        $("#spancityname").html(tkey);
        $.cookie("cityname", tkey);
    }
    else {
        var cityname = $.cookie("cityname");
        if (cityname == "" || cityname == null || cityname == "undefined") {
            var geolocation = new BMap.Geolocation();
            geolocation.getCurrentPosition(function (r) {
                if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                    var currentLat = r.point.lat;
                    var currentLon = r.point.lng;
                    var pt = new BMap.Point(currentLon, currentLat);
                    var geoc = new BMap.Geocoder();
                    geoc.getLocation(pt, function (rs) {
                        var addComp = rs.addressComponents;
                        var city = addComp.city;
                        $("#spancityname").html(city);
                        $.cookie("cityname", city);
                    })
                }
                else {
                    var city = "全部";
                    $("#spancityname").html(city);
                    $.cookie("cityname", city);
                }
            });
        }
        else {
            $("#spancityname").html(cityname);
        }
    }

    var page = 1;
    var discount = $('#thelist');
    var innerHeight = window.innerHeight;
    var timer2 = null;
    var tcount = 0;
    var cid = $('#cid').val();
    var baseurl = '/api/appfun.ashx?action=getshoplist&channel_name=localserver&category_id=' + cid + '&page_size=10&strwhere=&orderby=&page_index=';
    $.ajax({
        url: baseurl + page,
        type: 'GET',
        dataType: 'json',
        timeout: '1000',
        cache: 'false',
        success: function (data) {
            if (data.success == "true") {
                var arrText = [];
                arrText.push(' <dt>猜你喜欢</dt>');
                for (var i = 0, t; t = data.list[i++]; ) {
                    arrText.push('<dd>');
                    arrText.push('<a href="' + t.aurl + '" class="react ">');
                    arrText.push(' <div class="dealcard" data-did="34796339">')
                    arrText.push('<div class="dealcard-img imgbox" style="background: none;"><img src="' + t.img_url + '" style="height: 100%;"></div>');
                    arrText.push('<div class="dealcard-block-right"><div class="dealcard-brand single-line">' + t.title + '</div>');
                    arrText.push('<div class="title text-block">' + t.sub_title + '</div>');
                    arrText.push('<div class="price">抵扣率:<span class="strong">' + t.prevalue + '%</span><span class="strong-color"></span><span class="line-right"></span></div>');
                    arrText.push('</div>');
                    arrText.push('</div>');
                    arrText.push('</a>');
                    arrText.push('</dd>');
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
                                arrText.push('<dd>');
                                arrText.push('<a href="' + t.aurl + '" class="react ">');
                                arrText.push(' <div class="dealcard" data-did="34796339">')
                                arrText.push('<div class="dealcard-img imgbox" style="background: none;"><img src="' + t.img_url + '" style="height: 100%;"></div>');
                                arrText.push('<div class="dealcard-block-right"><div class="dealcard-brand single-line">' + t.title + '</div>');
                                arrText.push('<div class="title text-block">' + t.sub_title + '</div>');
                                arrText.push('<div class="price">抵扣率:<span class="strong">' + t.prevalue + '%</span><span class="strong-color"></span><span class="line-right"></span></div>');
                                arrText.push('</div>');
                                arrText.push('</div>');
                                arrText.push('</a>');
                                arrText.push('</dd>');
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