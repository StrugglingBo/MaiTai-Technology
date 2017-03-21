/**
 * Created by wjw on 2016/8/16.
 */
window.onload = function () {
    var video = document.getElementById("video");
    var audio = document.getElementById("audio");
    var clickMi = document.getElementById("clickMi");
    var flag = 0;
    clickMi.onclick = function () {
        if(flag ==0){
            audio.pause();
            video.style.display = "block";
            //video.play();

            flag = 1;
        }else{
            video.pause();
        }
    }



    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    //上半圆
    context.lineWidth = 1;
    context.strokeStyle = 'gray';
    context.arc(80,140,30,135,Math.PI*0.045)
    context.stroke();
    context.beginPath();
    //左侧竖线
    context.lineWidth = 0.5;
    context.strokeStyle = 'black';
    context.moveTo(50,140)
    context.lineTo(50,540)
    context.stroke();
    context.beginPath();
    //下半圆
    context.lineWidth = 1;
    context.strokeStyle = 'gray'
    context.arc(80,540,30,0,Math.PI*1);
    context.stroke();
    context.beginPath();
    //右竖线
    context.lineWidth = 1;
    context.strokeStyle = 'gray';
    context.moveTo(110,540);
    context.lineTo(110,140);
    context.stroke();
    context.beginPath();
    //左侧文字
    context.fillStyle="white";
    context.font = "30px Arial"
    context.fillText("梦",65,200);
    context.fillText("幻",65,250);
    context.fillText("天",65,300);
    context.fillText("堂",65,350);
    context.fillText("|",75,390);
    context.fillText("|",75,420);
    context.fillText("My",60,470);
    var img = new Image();
    img.src = "Img/1.png";
    img.onload = function () {
        context.drawImage(img,1,1,30,30,65,500,30,30);
    }
    context.beginPath();


    //画图片
    //var img1 = new Image();
    //img1.src = "Img/2.jpg";
    //img1.onload = function () {
    //    context.drawImage(img1,100,100,600,600,120,250,100,100);
    //}

    context.lineWidth = 2;//画圆
    context.strokeStyle = 'white'
    context.arc(400,300,200,0,2*Math.PI);
    context.stroke();
    context.beginPath();

}