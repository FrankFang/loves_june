function $(id){
	return document.getElementById(id);
} 
var page = {
	init:function(){
		this.addEvent();
	},
	addEvent:function(){
		var that = this;
		$('btnMayDay').onclick = function(){
			var speed = 50; 
			var c = $('content');
			setTimeout(function(){
				var left = parseInt(c.style.left) - 0;
				if(left>-900){
					c.style.left = left-speed + 'px';
					speed=speed*0.9;
					if(speed<10){speed=10}
					setTimeout(arguments.callee,10)
				}
			},10);
		}
		$('btnShenzhen').onclick = function(){
			var speed = 50; 
			var c = $('content');
			setTimeout(function(){
				var left = parseInt(c.style.left) - 0;
				if(left>-1500){
					c.style.left = left-speed + 'px';
					speed=speed*0.9;
					if(speed<10){speed=10}
					setTimeout(arguments.callee,10)
				}
			},10);
		}
		$('btnWuhan').onclick = function(){
			var speed = 50; 
			var c = $('content');
			setTimeout(function(){
				var left = parseInt(c.style.left) - 0;
				if(left>-2300){
					c.style.left = left-speed + 'px';
					speed=speed*0.9;
					if(speed<10){speed=10}
					setTimeout(arguments.callee,10)
				}
			},10);
		}
		$('btnFinal').onclick = function(){
			var speed = 50; 
			var c = $('content');
			setTimeout(function(){
				var left = parseInt(c.style.left) - 0;
				if(left>-3100){
					c.style.left = left-speed + 'px';
					speed=speed*0.9;
					if(speed<10){speed=10}
					setTimeout(arguments.callee,10)
				}
			},10);
		}
	}
};

window.onload = function(){
	page.init();
}