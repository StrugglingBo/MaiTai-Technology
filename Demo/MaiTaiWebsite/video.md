html5������Ƶvideo����

һ������
video��ǩ�ڼ������ϻ��ǱȽϲ�ģ����Ҫ��ҳ����ʹ��video��ǩ����Ҫ�������������֧��Ogg Theora����VP8�ģ�Opera��Mozilla��Chrome����֧��H.264�ģ�Safari��IE 9��Chrome����
����֧�ֵģ�IE6��7��8������������H5���ƶ��豸��չ�֣���������ʹ��webkit�ںˣ�ֻ��Ҫ����Android��IOS�豸�ϵĲ��졣

<video id="video" autoplay="autoplay" loop="loop" preload="auto" controls="controls" src="movie.mp4" poster="pre.jpg"
    width="640" height="1280">
    �������֧�֣�����ţ�Ƶ�İ�
</video>
video��ǩ����src��poster��preload��autoplay��loop��controls��width��height�ȼ������ԣ� �Լ�һ���ڲ�ʹ�õı�ǩ<source>��
video��ǩ�ڳ��˿��԰���<source>��ǩ�⣬�����԰�����ָ������Ƶ������ ����ʱ�����ص����ݣ�����������֡�

1��src
����ý���ļ���URL�����������ǩҲ����ʹ���ڲ���ǩ<source>�����Ǹ��˾�����src�ÿ�Щ~ͬ�������������ý���ļ��ĸ�ʽ��Ҫ�󣬾�֧��3�ָ�ʽogg��mp4��webM������������

��ʽ ����IE ����Firefox ����Opera ����Chrome���� Safari

Ogg	����No	����3.5+	���� 10.5+����	5.0+	��������No

MPEG4 9.0+ �� No	�������� No������ 5.0+	��������3.0+

WebM No	���� 4.0+	������10.6+	����6.0+��������	No

2��poster
poster��������ָ��һ��ͼƬ��URL���ڵ�ǰ��Ƶ������Чʱ��ʾ����Ƶ������Ч��������Ƶ���ڼ��أ���������Ƶ��ַ����ȵȡ�
������Ի��������ô��ģ��ر����������������ô����ʱ�򣬰���Ƶ�ĵ�һ֡ͼƬ�����ǣ�Ȼ����Ƶ����ʱ��û��Υ�͸С�

3��preload
���������ڶ�����Ƶ�Ƿ�Ԥ���ء�������������ѡ���ֵ��none��metadata��auto�������ʹ�ô����ԣ�Ĭ��Ϊauto��

None��������Ԥ����;

Metadata������Ԥ���أ������ߴ磬��һ֡����Ŀ�б�����ʱ��ȵȣ�;

Auto��ȫ��Ԥ����;

4��autoplay
autoplay��������������Ƶ�Ƿ��Զ����ţ�����ʱ����ʾ�Զ����ţ�ȥ���Ǳ�ʾ���Զ����š�������������ƶ��豸�����ϵģ�

5��loop
loop��������ָ����Ƶ�Ƿ�ѭ������

6��controls
������ָ����ԣ������û���ʾ�ؼ��������������������ͣ���ƣ����Ž��ȿ��ƣ��������Ƶȵȡ�

7��width��height
��ȡ��߶���

�����������¼�
var video = document.getElementById("video");
1�����Ժͷ���
a������

video.error; //null:����

video.error.code; //���ش������ 1.�û���ֹ ����2.������� ����3.������� ����4.URL��Ч

b������״̬
video.currentSrc; //���ص�ǰ��Դ��URL

video.src = value; //���ػ����õ�ǰ��Դ��URL

video.canPlayType(type); //�Ƿ��ܲ���ĳ�ָ�ʽ����Դ

video.networkState; //��������״̬�� 0.��Ԫ��δ��ʼ�� ����1.������û��ʹ������ ����2.������������ ����3.û���ҵ���Դ

video.load(); //���¼���srcָ������Դ

video.buffered; //�����ѻ�������

video.preload; //����Ԥ������Ϣ����none:��Ԥ�� ����metadata:Ԥ����Դ��Ϣ ����auto:

c������״̬
video.currentTime = value; //��ǰ���ŵ�λ�ã���ֵ�ɸı�λ��

video.startTime; //һ��Ϊ0�����Ϊ��ý����߲���0��ʼ����Դ����Ϊ0

video.duration; //��ǰ��Դ���� ����������

video.paused; //�Ƿ���ͣ

video.defaultPlaybackRate = value;//Ĭ�ϵĻط��ٶȣ���������

video.playbackRate = value;//��ǰ�����ٶȣ����ú����ϸı�

video.played; //�����Ѿ����ŵ�����TimeRanges

video.ended; //�Ƿ����

video.autoPlay; //�Ƿ��Զ�����

video.loop; //�Ƿ�ѭ������

video.play(); //����

video.pause(); //��ͣ

d����Ƶ����
video.controls;//�Ƿ���Ĭ�Ͽ�����

video.volume = value; //����

video.muted = value; //����

2���¼�
video.addEventListener("XXX" , function(){
    //.....
})
XXX���¼�����
loadstart //�ͻ��˿�ʼ��������

progress //�ͻ���������������

suspend//�ӳ�����

abort //�ͻ���������ֹ���أ�������Ϊ��������

loadstart //�ͻ��˿�ʼ��������

error //��������ʱ��������

stalled //����ʧ��

play //play()��autoplay��ʼ����ʱ����

pause//pause()����

loadedmetadata //�ɹ���ȡ��Դ����

waiting//�ȴ����ݣ����Ǵ���

playing//��ʼ�ط�

canplay//���Բ��ţ�����;������Ϊ���ض���ͣ

canplaythrough//���Բ��ţ�����ȫ���������

seeking //Ѱ����

seeked//Ѱ�����

timeupdate //����ʱ��ı�

ended//���Ž���

ratechange//�������ʸı�

durationchange //��Դ���ȸı�

volumechange //�����ı�

���������������Ŀ�
1��mp4�ļ����������ֻ�ܲ�����Ƶ���֣���Ƶ���ֲ���ʾ

���ǿ���ʱ�ʼ���������⣬��Ϊ��Ƶ���õ���¼�ģ������˾��������ȴ�����AVI��ʽ��Ȼ��ͨ����ʽ����ת��mp4���������������Ӳ��û����Ƶ��ʾֻ����Ƶ��������
���ȷ������Ƶת���Ǳ�������⣬��ʽ������ת��ʱ����ѡ��һЩ�����ʽ������MPEG2��MPEG4��AVC��WMV2�ȵȡ�ѡ��AVC�ͺ��ˣ���ʱҲ������

2��mp4�ļ���ƻ���豸��������ϲ��ܲ��ţ�android���Ǻõ�
���Ű�ť��һ������б�ܣ���ʾ���ܲ��ţ���ʱ���������������������ң�����ΪhttpЭ����û��rang����ͷ�������IOS�Ĳ��������ʹ��httpЭ�����mp4�����йء�
����ݵĽ���취����ʹ��nginx���mp4�ļ���

httpͷ��Range��Content-Range��ʾhttp�ϵ�����

Range ��������ͷ�У�ָ����һ���ֽڵ�λ�ú����һ���ֽڵ�λ�ã�һ���ʽ��

Range:(unit=first byte pos)-[last byte pos]

Content-Range������Ӧͷ��ָ������ʵ���е�һ���ֵĲ���λ�ã���Ҳָʾ������ʵ��ĳ��ȡ��ڷ�������ͻ�����һ��������Ӧ��������������Ӧ���ǵķ�Χ������ʵ�峤�ȡ�

һ���ʽ��
Content-Range: bytes (unit first byte pos) - [last byte pos]/[entity legth]

�������������ļ�: GET /test.rar HTTP/1.1

Connection: close

Host: 116.1.219.219

Range: bytes=0-801 //һ���������������ļ���bytes=0- �������ͷ

һ��������ӦHTTP/1.1 200 OK

Content-Length: 801

Content-Type: application/octet-stream

Content-Range: bytes 0-800/801 //801:�ļ��ܴ�С

3��IOS�豸�Զ����Ų���Ч������Ҫ�ֶ�����play()����
autoplay����Ǹ���û��ʲô���õ����ԣ�IOS�в����Զ����ţ���ҪJS����play()����������취����

<script>
            if ("wView" in window) { //����ƻ���豸�Զ�����
                window.wView.allowsInlineMediaPlayback = "YES";
                window.wView.mediaPlaybackRequiresUserAction = "NO";
            }
</script>
��html�ļ�head��ǩ�м�������JS����

4���ڲ���android�豸���޷�����
�޷�������ָautoplay�����û���ã�ͬʱ����play()����ͬ��Ȼ���ѣ����������Ҳ����������ԭ����ʲô�������ϳ��Ĵ���

��������ǣ��ڲ���ʱ��Ҫ�ж��û����ֻ����ͣ�IOS��Android�豸�ֿ�����

var isiOS = !! navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
Ȼ��IOS�豸ֱ��ʹ��autoplay������Ի��ߵ���play()������android�����Ҫ��video֮�ϼ�һ��ͼƬ��ͨ�����ͼƬȻ�󲥷ţ�100ms֮��������Ƶʱ��Ϊ1S��Ȼ���ٴβ��ţ���OK��
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
������������¼���ֱ�ӵ��õ���¼��ڵĲ��Ŵ��룬��ô����Ƶ��ֱ�ӽ����ˣ��о������⣬Ȼ������������Ŷ����Ƶ��ֻ��Ҫ��һ��ʹ������������д������У�
֮�����Ƶֱ�ӵ���play()�������ɣ����д����������Ƶ����⣬�и��õİ취����ָ���£�лл!