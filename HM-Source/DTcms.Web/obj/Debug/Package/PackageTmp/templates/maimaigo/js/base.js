// JavaScript Document
$(function(){	
	$(".nav-bar li").bind("mouseenter",function(e){
		$(this).children("a").addClass("hover");
		$(this).children(".sub").removeClass("hidesub");	
		$(this).children(".sub").addClass("showsub");

	});	
	
	$(".nav-bar li").bind("mouseleave",function(e){
		$(this).children("a").removeClass("hover");
		$(this).children(".sub").removeClass("showsub");	
		$(this).children(".sub").addClass("hidesub");
	});	
});