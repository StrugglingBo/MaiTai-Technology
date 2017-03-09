;(function($){
	var Classify = function(str,data){
		var self = this;
		this.classifyBox = $(str);
		this.selectBtn = $('.selectBtn');
		this.sureBtn = $('#sureBtn');
		this.ulBox = $('<ul class="clearfix"></ul>');
		this.data = data;
		this.result = null;
		this.renderDOM();
		this.addEvent();
		//选择分类按钮
		this.selectBtn.click(function(){
			self.classifyBox.slideToggle();
		});
		this.classifyBox.on('click', '#sureBtn', function(){
			self.result = null;
			self.showValue();
			self.classifyBox.slideUp(function(){
				self.classifyBox.find('input:checkbox').each(function(){
					if($(this).attr('checked')){
						$(this).removeAttr('checked');
					}
				});
			});
		});
	};
	Classify.prototype = {
		showValue:function(){
			var val = [];
			var checkedList = this.classifyBox.children().children('li.classify-level-1');
			$(checkedList).each(function(){
				if($(this).children('input:checkbox').attr('checked')){
					var obj = {};
					obj.name = $(this).children('input:checkbox').val();
					if($(this).children('ul')){
						var childrenLiList2 = $(this).children('ul').children('li.classify-level-2');
						var box2 = [];
						$(childrenLiList2).each(function(){
							if($(this).children('input:checkbox').attr('checked')){
								var obj2 = {};
								obj2.name = $(this).children('input:checkbox').val();
								if($(this).children('ul')){
									var childrenLiList3 = $(this).children('ul').children('li.classify-level-3');
									var box3 = [];
									$(childrenLiList3).each(function(){
										if($(this).children('input:checkbox').attr('checked')){
											var obj3 = {};
											obj3.name = $(this).children('input:checkbox').val();
											if($(this).children('ul')){
												var childrenLiList4 = $(this).children('ul').children('li.classify-level-4');
												var box4 = [];
												$(childrenLiList4).each(function(){
													if($(this).children('input:checkbox').attr('checked')){
														var obj4 = {};
														obj4.name = $(this).children('input:checkbox').val();
														box4.push(obj4);
													}
												});
											}
											obj3.sub = box4;
											box3.push(obj3);
										}
									});
								}
								obj2.sub = box3;
								box2.push(obj2);
							}
						});
						obj.sub = box2;
					}
					val.push(obj);
				}
			});
			this.result = val;
		},
		addEvent:function(){
			var self = this;
			this.classifyBox.on('click','input:checkbox',function(){
				if($(this).attr('checked')){
					var fatherLiBox = $(this).parent().parents('li');
					$(fatherLiBox).each(function(){
						$(this).children().attr('checked','checked');
					});
				}
				else{
					var siblingsLiBox = $(this).parent().parent().find('input:checked');
					var temp = 0;
					$(siblingsLiBox).each(function(){
						if($(this).attr('checked')){
							return false;
						}
						else{
							temp ++;
						}
					});
					if(temp == siblingsLiBox.length){
						var fatherLiBox = $(this).parent().parents('li');
					    $(fatherLiBox).each(function(){
					    	var temp = $(this).siblings('li');
					    	var flag = true;
					    	$(temp).each(function(){
					    		if($(this).children().attr('checked')){
					    			flag = false;
					    			return false;
					    	    }
					    	});
					    	if(flag){
					    		$(this).children().removeAttr('checked');
					    	}
					    	else{
					    		$(this).children().removeAttr('checked');
					    		return false;
					    	}
					    });
					}
					if($(this).next().next().find('input:checkbox')){
						var childrenBox = $(this).next().next().find('input:checkbox');
						$(childrenBox).each(function(){
							if($(this).attr('checked')){
								$(this).removeAttr('checked');
							}
						});
					}
				}
			});
		},
		renderDOM:function(){
			var self = this;
			$(this.data).each(function(){
				if(this.name != undefined){
					var firstLiBox = $('<li class="classify-level-1">');
					firstLiBox.append('<input type="checkbox" value="'+this.name+'"><span>'+this.name+'</span>');
					if(this.sub != undefined){
						var dataLevel2 = this.sub;
						var secondUlBox = $('<ul class="clearfix"></ul>');
						$(dataLevel2).each(function(){
							if(this.name != undefined){
								var secondLiBox = $('<li class="classify-level-2">');
								secondLiBox.append('<input type="checkbox" value="'+this.name+'"><span>'+this.name+'</span>');
								if(this.sub != undefined){
									var dataLevel3 = this.sub;
									var thirdUlBox = $('<ul class="clearfix"></ul>');
									$(dataLevel3).each(function(){
										if(this.name != undefined){
											var thirdLiBox = $('<li class="classify-level-3">');
											thirdLiBox.append('<input type="checkbox" value="'+this.name+'"><span>'+this.name+'</span>');
											if(this.sub != undefined){
												var dataLevel4 = this.sub;
												var fourUlBox = $('<ul class="clearfix"></ul>');
												$(dataLevel4).each(function(){
													if(this.name != undefined){
														var fourLiBox = $('<li class="classify-level-4">');
														fourLiBox.append('<input type="checkbox" value="'+this.name+'"><span>'+this.name+'</span>');
														fourUlBox.append(fourLiBox);
													}
												});
												thirdLiBox.append(fourUlBox);
												thirdUlBox.append(thirdLiBox);
												secondLiBox.append(thirdUlBox);
												secondUlBox.append(secondLiBox);
												firstLiBox.append(secondUlBox);
												self.ulBox.append(firstLiBox);
											}
											else{
												thirdUlBox.append(thirdLiBox);
											}
										}
									});
									secondLiBox.append(thirdUlBox);
									secondUlBox.append(secondLiBox);
									firstLiBox.append(secondUlBox);
									self.ulBox.append(firstLiBox);
								}else{
									secondUlBox.append(secondLiBox);
								}
							}
						});
						firstLiBox.append(secondUlBox);
						self.ulBox.append(firstLiBox);
					}
					else{
						self.ulBox.append(firstLiBox);
					}
				}
			});
			this.classifyBox.html(this.ulBox);
			this.classifyBox.append('<input id="sureBtn" type="button" value="确定">');
		}
	};
	window['Classify'] = Classify;
})(jQuery);