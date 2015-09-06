	// 在div中每个字符添加span标签的函数;
	document.body.onload = function() {
		results1 = getSpanPosition(e1), results2 = getSpanPosition(e2)
	};
	var e1 = document.getElementById("container");
	var e2 = document.getElementById("container2");
	function getSpanPosition(container) {
		if (container.innerHTML !== undefined) {
			var position = [];//存放位置的数组;
			var word = [];//存放字符的数组;
			var content = container.childNodes;
			// 遍历子节点
			for (var i = 0; i < content.length; i++) {
				var a = content[i];
					// 遍历文本节点内字符
				if (a.constructor == Text) {
					var span = [];
					for (var y = 0; y < a.length; y++) {
						var newa = document.createElement("span");
						container.insertBefore(newa,a);
						newa.innerText = a.nodeValue[y];							
						span.push(newa);
						var weizhi = getElementPosition(newa);
						var node = a.nodeValue[y]
						position.push(weizhi);
						word.push(node)
						console.log(weizhi,node);
					};
					for(var j = 0; j < span.length; j++) {
						container.removeChild(span[j]);							
					};
				};
			};
			return {p:position,w:word};
		};
	};
	// 获取dom元素位置的函数;
	function getElementPosition(element) {
		var oLeft = element.offsetLeft;
		var oTop = element.offsetTop;
		var oWidth = oLeft + element.offsetWidth;
		var oHeight = oTop + element.offsetHeight;		
		var oParent = element.offsetParent;
		while (oParent !== null) {
			oLeft += oParent.offsetLeft;
			oParent = oParent.offsetParent;
		};	
		return{x1:oLeft, x2:oWidth, y1:oTop,y2:oHeight};
	};
	var timer;
	e1.onmousemove = function(e) {
		clearTimeout(timer);
		timer = setTimeout(function(e) {
				return function() {
					judge(e);
				}
			}(e), 1000);
	};
	e2.onmousemove = function(e) {
		clearTimeout(timer);
		timer = setTimeout(function(e) {
				return function() {
					judge(e);
				}
			}(e), 1000);
	};
	e1.onmouseout = function() {
		clearTimeout(timer);
	};
	e2.onmouseout = function() {
		clearTimeout(timer);
	};
	//获取鼠标位置;
	function mousePosition(ev) {
		var oEvent = ev || event;
		var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
		var scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
		var xyArr = {x:oEvent.pageX, y:oEvent.pageY};
		return xyArr;
	};
	//输出鼠标所在区域字符;
	function judge(ev) {
		var xy = mousePosition(ev);
		var results = [results1,results2]
		for (var i = 0; i < results.length; i++) {
			var ai = results[i].p;
			for (var y = 0; y < ai.length; y++) {
				if (xy.x >= ai[y].x1 && xy.x <= ai[y].x2 && xy.y >= ai[y].y1 && xy.y <= ai[y].y2) { 
					alert(results[i].w[y]);
				};
			};
		};			
	};
	//获取选中文字内容;
	 function getSelect() {
		var selectTxt;
			if (window.getSelection) {//标准浏览器支持的方法
 				selectTxt = window.getSelection();
			};
			if (document.selection) {//IE浏览器支持的方法
				selectTxt = document.selection.createRange().text;
			};
		return trim(selectTxt.toString());
	};
	//删除左右两端的空格;
	function trim(str) { 
		return str.replace(/(^\s*)|(\s*$)/g, "");
　　};
	e1.onmouseup = function(e) {
		var content = getSelect(e);
		if (content != "" || null) {
			alert(content);
		};	
	} ;
	e2.onmouseup = function(e) {
		var content = getSelect(e);
		if (content != "" || null) {
			alert(content);
		};
	} ;