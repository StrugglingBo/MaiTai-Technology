
//
var currslid = 0;
var slidint;
function setfoc(id){
	document.getElementById("focpic").src = picarry[id];
	document.getElementById("foclnk").href = lnkarry[id];
	document.getElementById("foctitle").innerHTML = '<a href="'+lnkarry[id]+'" target="_blank">'+ttlarry[id]+'</a>';
	currslid = id;
	for(i=0;i<5;i++){
		document.getElementById("tmb"+i).className = "thumb_off";
	};
	document.getElementById("tmb"+id).className ="thumb_on";
	focpic.style.visibility = "hidden";
	focpic.filters[0].Apply();
	if (focpic.style.visibility == "visible") {
		focpic.style.visibility = "hidden";
		focpic.filters.revealTrans.transition=23;
	}
	else {
		focpic.style.visibility = "visible";
		focpic.filters[0].transition=23;
	}
	focpic.filters[0].Play();
	stopit();
}

function playnext(){
	if(currslid==4){
		currslid = 0;
	}
	else{
		currslid++;
	};
	setfoc(currslid);
	playit();
}
function playit(){
	slidint = setTimeout(playnext,4500);
}
function stopit(){
	clearTimeout(slidint);
	}
window.onload = function(){
	playit();
}