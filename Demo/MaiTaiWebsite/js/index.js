/**
 * Created by Administrator on 2017/3/20.
 */
//window.onLoad = function () {
// }

// banner效果
    $(document).ready(function(e) {
        $('#b03').unslider({
            dots: true
        });
    });
//全屏滚动插件fullPage.js
    $(function(){
        $('#dowebok').fullpage(
            {
                'navigation': true,
            }
        );
    });
//点击导航栏按钮添加选中样式
    $(function(){
//            var down1 = document.getElementById('down1');
        down11.onclick = function(){
            down1.style.display = 'block';
            down2.style.display = 'none';
            down3.style.display = 'none';
            down4.style.display = 'none';
            down5.style.display = 'none';
        }
        down22.onclick = function(){
            down1.style.display = 'none';
            down2.style.display = 'block';
            down3.style.display = 'none';
            down4.style.display = 'none';
            down5.style.display = 'none';
        }
        down33.onclick = function(){
            down1.style.display = 'none';
            down2.style.display = 'none';
            down3.style.display = 'block';
            down4.style.display = 'none';
            down5.style.display = 'none';
        }
        down44.onclick = function(){
            down1.style.display = 'none';
            down2.style.display = 'none';
            down3.style.display = 'none';
            down4.style.display = 'block';
            down5.style.display = 'none';
        }
        down55.onclick = function(){
            down1.style.display = 'none';
            down2.style.display = 'none';
            down3.style.display = 'none';
            down4.style.display = 'none';
            down5.style.display = 'block';
        }
    });

//        麦太科技宣传视频
//        var video1=document.getElementById("cideoPlay1");
//
//        $('#video1').click(function(){
//            if(video1.paused){
//                video1.play();
//            }else{
//                video1.pause();
//            }
//        });
