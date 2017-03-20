html5加载视频video积累

一、基本
video标签在兼容性上还是比较差的，如果要在页面中使用video标签，需要考虑三种情况，支持Ogg Theora或者VP8的（Opera、Mozilla、Chrome），支持H.264的（Safari、IE 9、Chrome），
都不支持的（IE6、7、8）。但是由于H5在移动设备上展现，基本都是使用webkit内核，只需要考虑Android、IOS设备上的差异。

<video id="video" autoplay="autoplay" loop="loop" preload="auto" controls="controls" src="movie.mp4" poster="pre.jpg"
    width="640" height="1280">
    浏览器不支持，换个牛逼点的吧
</video>
video标签含有src、poster、preload、autoplay、loop、controls、width、height等几个属性， 以及一个内部使用的标签<source>。
video标签内除了可以包含<source>标签外，还可以包含当指定的视频都不能 播放时，返回的内容，如上面的文字。

1、src
就是媒体文件的URL，不用这个标签也可以使用内部标签<source>，但是个人觉得用src好看些~同样各个浏览器对媒体文件的格式有要求，就支持3种格式ogg、mp4、webM，兼容性如下

格式 　　IE 　　Firefox 　　Opera 　　Chrome　　 Safari

Ogg	　　No	　　3.5+	　　 10.5+　　	5.0+	　　　　No

MPEG4 9.0+ 　 No	　　　　 No　　　 5.0+	　　　　3.0+

WebM No	　　 4.0+	　　　10.6+	　　6.0+　　　　	No

2、poster
poster属性用于指定一张图片的URL，在当前视频数据无效时显示。视频数据无效可能是视频正在加载，可能是视频地址错误等等。
这个属性还是蛮有用处的，特别是在网络情况不怎么样的时候，把视频的第一帧图片放在那，然后当视频播放时就没有违和感。

3、preload
此属性用于定义视频是否预加载。属性有三个可选择的值：none、metadata、auto。如果不使用此属性，默认为auto。

None：不进行预加载;

Metadata：部分预加载（包括尺寸，第一帧，曲目列表，持续时间等等）;

Auto：全部预加载;

4、autoplay
autoplay属性用于设置视频是否自动播放，出现时，表示自动播放，去掉是表示不自动播放。（这个属性在移动设备上蛮废的）

5、loop
loop属性用于指定视频是否循环播放

6、controls
如果出现该属性，则向用户显示控件，控制栏须包括播放暂停控制，播放进度控制，音量控制等等。

7、width、height
宽度、高度罗

二、方法和事件
var video = document.getElementById("video");
1、属性和方法
a、错误

video.error; //null:正常

video.error.code; //返回错误编码 1.用户终止 　　2.网络错误 　　3.解码错误 　　4.URL无效

b、网络状态
video.currentSrc; //返回当前资源的URL

video.src = value; //返回或设置当前资源的URL

video.canPlayType(type); //是否能播放某种格式的资源

video.networkState; //返回网络状态码 0.此元素未初始化 　　1.正常但没有使用网络 　　2.正在下载数据 　　3.没有找到资源

video.load(); //重新加载src指定的资源

video.buffered; //返回已缓冲区域

video.preload; //返回预加载信息　　none:不预载 　　metadata:预载资源信息 　　auto:

c、播放状态
video.currentTime = value; //当前播放的位置，赋值可改变位置

video.startTime; //一般为0，如果为流媒体或者不从0开始的资源，则不为0

video.duration; //当前资源长度 流返回无限

video.paused; //是否暂停

video.defaultPlaybackRate = value;//默认的回放速度，可以设置

video.playbackRate = value;//当前播放速度，设置后马上改变

video.played; //返回已经播放的区域，TimeRanges

video.ended; //是否结束

video.autoPlay; //是否自动播放

video.loop; //是否循环播放

video.play(); //播放

video.pause(); //暂停

d、视频控制
video.controls;//是否有默认控制条

video.volume = value; //音量

video.muted = value; //静音

2、事件
video.addEventListener("XXX" , function(){
    //.....
})
XXX是事件类型
loadstart //客户端开始请求数据

progress //客户端正在请求数据

suspend//延迟下载

abort //客户端主动终止下载（不是因为错误引起）

loadstart //客户端开始请求数据

error //请求数据时遇到错误

stalled //网速失速

play //play()和autoplay开始播放时触发

pause//pause()触发

loadedmetadata //成功获取资源长度

waiting//等待数据，并非错误

playing//开始回放

canplay//可以播放，但中途可能因为加载而暂停

canplaythrough//可以播放，歌曲全部加载完毕

seeking //寻找中

seeked//寻找完毕

timeupdate //播放时间改变

ended//播放结束

ratechange//播放速率改变

durationchange //资源长度改变

volumechange //音量改变

三、开发中遇到的坑
1、mp4文件在浏览器中只能播放音频部分，视频部分不显示

这是开发时最开始遇到的问题，因为视频是用单反录的，经过滤镜、剪辑等处理导出AVI格式，然后通过格式工厂转成mp4，但是在浏览器中硬是没有视频显示只有音频的声音。
最后确定是视频转换是编码的问题，格式工厂在转换时可以选择一些编码格式，包括MPEG2、MPEG4、AVC、WMV2等等。选择AVC就好了，当时也是醉了

2、mp4文件在苹果设备的浏览器上不能播放，android上是好的
播放按钮上一个大大的斜杠，表示不能播放，当时心中泪崩啊。经过问题查找，是因为http协议中没有rang请求头，具体跟IOS的播放器如何使用http协议进行mp4解析有关。
最方便快捷的解决办法就是使用nginx存放mp4文件。

http头的Range、Content-Range表示http断点续传

Range 用于请求头中，指定第一个字节的位置和最后一个字节的位置，一般格式：

Range:(unit=first byte pos)-[last byte pos]

Content-Range用于响应头，指定整个实体中的一部分的插入位置，他也指示了整个实体的长度。在服务器向客户返回一个部分响应，它必须描述响应覆盖的范围和整个实体长度。

一般格式：
Content-Range: bytes (unit first byte pos) - [last byte pos]/[entity legth]

请求下载整个文件: GET /test.rar HTTP/1.1

Connection: close

Host: 116.1.219.219

Range: bytes=0-801 //一般请求下载整个文件是bytes=0- 或不用这个头

一般正常回应HTTP/1.1 200 OK

Content-Length: 801

Content-Type: application/octet-stream

Content-Range: bytes 0-800/801 //801:文件总大小

3、IOS设备自动播放不生效，必须要手动调用play()方法
autoplay真的是个蛮没有什么作用的属性，IOS中不能自动播放，需要JS调用play()方法，解决办法就是

<script>
            if ("wView" in window) { //用于苹果设备自动播放
                window.wView.allowsInlineMediaPlayback = "YES";
                window.wView.mediaPlaybackRequiresUserAction = "NO";
            }
</script>
在html文件head标签中加入上述JS代码

4、在部分android设备上无法播放
无法播放是指autoplay这个鬼没有用，同时调用play()方法同样然并卵，这个问题我也不清楚解决的原因是什么，在网上抄的代码

具体情况是，在播放时需要判断用户的手机类型，IOS和Android设备分开处理

var isiOS = !! navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
然后IOS设备直接使用autoplay这个属性或者调用play()方法，android这边需要在video之上加一张图片，通过点击图片然后播放，100ms之后设置视频时间为1S，然后再次播放，就OK了
$(video).css({
    display: "block"
});
$(".androidBegin").show();
$(".androidBegin").bind("touchstart", function(a) {
    video.play();
    setTimeout(function() {
        video.currentTime = 1;
        video.play();
    }, 100)
    $(".androidBegin").hide();
    $(video).unbind("touchstart");
})
如果不加入点击事件，直接调用点击事件内的播放代码，那么该视频就直接结束了，感觉好奇葩，然后就是连续播放多个视频，只需要第一个使用上述代码进行触发就行，
之后的视频直接调用play()方法即可，如有大神遇到类似的问题，有更好的办法，请指教下，谢谢!