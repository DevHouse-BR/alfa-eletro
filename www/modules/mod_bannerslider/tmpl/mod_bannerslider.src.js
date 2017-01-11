/*
	Content Slider script for Module Banner Slider
	Copyrighted by VietNQ [aFeLiOn]
	Licence GNU/GPL
	The fading script is based on Featured Content Slider script - dynamicdrive.com
*/


function ContentSlider(sliderid, effect, delay, random, resize) {
	this.id = sliderid;
	this.timer = sliderid + "timer";
	this.delay = (typeof(delay) == "number") ? delay : 3000;
	this.effect = (typeof(effect) == "string") ? effect : "none";
	this.sliders = [];
	this.pointer = 0;
	this.pause = 0;

	var slider = document.getElementById(sliderid);
	var alldivs = slider.getElementsByTagName("div");
	
	for (var i = 0; i < alldivs.length; i++) {
		if (alldivs[i].className == "bs_opacitylayer") {
			slider.opacitylayer = alldivs[i];
		}
		else if (alldivs[i].className == "bs_contentdiv") {
			this.sliders.push(alldivs[i]);
		}
	}

	if (this.sliders.length == 0) {
		return;
	}
	this.targetobject = slider.opacitylayer || null;

	this.width = parseInt(slider.style.width);
	this.height = parseInt(slider.style.height);

	if ((typeof(resize) != "undefined") && (resize == 1)) {
		this.showall();		// temporarily unhide all to get images dimension
		ContentSlider.resizeImg(sliderid, this.width, this.height);
		this.hideall();
	}
		
	var csobj = this;
	slider.onmouseover = function() {csobj.pause = 1};		// pause when mouse over
	slider.onmouseout = function() {csobj.pause = 0};

	if ((typeof(random) == "undefined") || (random == 1)) {
		this.sliders.sort(function() {return 0.5 - Math.random()});
	}
 	
 	if (this.effect.charAt(0) == 's') {
		this.accel = 1.05;				// change scroll acceleration here
		this.pos = 1;
		for (var i = 0; i < this.sliders.length; i++) {
			this.sliders[i].style.position = "relative";
		}
	}
 	 	
	switch (effect) {
		case "scroll_left":
		case "scroll_up":
 			this.scrollL();
 			break;
		case "scroll_right":
		case "scroll_down":
			this.scrollR();
			break;
		case "fade":
		default:
			this.fade();
	}
}

ContentSlider.prototype.next = function() {
	this.pointer = (this.pointer < this.sliders.length - 1) ? ++this.pointer : 0;
}

ContentSlider.prototype.hideall = function() {
	for (var i = 0; i < this.sliders.length; i++) {
		this.sliders[i].style.display = "none";
	}
}

ContentSlider.prototype.showall = function() {
	for (var i = 0; i < this.sliders.length; i++) {
		this.sliders[i].style.display = "block";
	}
}

// -------
ContentSlider.prototype.fade = function() {
	var csobj = this;

	if (this.pause) {
		window[this.timer] = setTimeout(function(){csobj.fade()}, 1000);
	}
	else {
		this.sliders[this.pointer].style.display = "none";
		if (this.effect != "none") {
			if (window[this.id + "fadetimer"]) {
				clearTimeout(window[this.id + "fadetimer"]);
			}
			this.setopacity(0.1);
		}
		this.next();
		this.sliders[this.pointer].style.display = "block";
		if (this.effect != "none") {
			this.fadein();
		}
			
		window[this.timer] = setTimeout(function(){csobj.fade()}, this.delay);
	}
}

// -------
ContentSlider.prototype.fadein = function() {
	if (this.targetobject && this.targetobject.currentopacity < 1) {
		this.setopacity(this.targetobject.currentopacity + 0.1);
		var csobj = this;
		window[this.id + "fadetimer"] = setTimeout(function(){csobj.fadein()}, 100);
	}
}

ContentSlider.prototype.setopacity = function(value) {
	if (this.targetobject && this.targetobject.filters && this.targetobject.filters[0]) {
		if (typeof this.targetobject.filters[0].opacity == "number")
			this.targetobject.filters[0].opacity = value * 100;
		else
			this.targetobject.style.filter = "alpha(opacity=" + value * 100 + ")";
	}
	else if (this.targetobject && typeof this.targetobject.style.MozOpacity != "undefined")
		this.targetobject.style.MozOpacity = value;
	else if (this.targetobject && typeof this.targetobject.style.opacity != "undefined")
		this.targetobject.style.opacity = value;
	this.targetobject.currentopacity = value;
}

// -------
ContentSlider.prototype.scrollL = function() {
	var csobj = this;

	if (this.pause) {
		window[this.timer] = setTimeout(function(){csobj.scrollL()}, 1000);
	}
	else {
		if ( (this.effect == "scroll_left" && this.pos > -this.width) || (this.effect == "scroll_up" && this.pos > -this.height) ) {
			if (this.pos == 0) {
				this.pos = -1;
				window[this.timer] = setTimeout(function(){csobj.scrollL()}, this.delay);
				return;
			}
			else if (this.pos < 0)
				this.pos = Math.floor(this.pos * this.accel) - 1;
			else
				this.pos = Math.floor(this.pos / this.accel);	// change to "this.pos -= this.accel;" (accel is an integer value) for constant speed
		}
		else {
			this.sliders[this.pointer].style.display = "none";
			this.pos = -this.pos;
			this.next();
		}
		this.sliders[this.pointer].style.display = "block";
		
		if (this.effect == "scroll_left")
			this.sliders[this.pointer].style.left = this.pos + "px";
		else
			this.sliders[this.pointer].style.top = this.pos + "px";

		window[this.timer] = setTimeout(function(){csobj.scrollL()}, 55);		// decrease timeout for smoother/faster
	}
}

ContentSlider.prototype.scrollR = function() {
	var csobj = this;

	if (this.pause) {
		window[this.timer] = setTimeout(function(){csobj.scrollR()}, 1000);
	}
	else {
		if ( (this.effect == "scroll_right" && this.pos < this.width) || (this.effect == "scroll_down" && this.pos < this.height)) {
			if (this.pos == 0) {
				this.pos = 1;
				window[this.timer] = setTimeout(function(){csobj.scrollR()}, this.delay);
				return;
			}
			else if (this.pos < 0)
				this.pos = Math.ceil(this.pos / this.accel);
			else
				this.pos = Math.ceil(this.pos * this.accel);
		}
		else {
			this.sliders[this.pointer].style.display = "none";
			this.pos = -this.pos;
			this.next();
		}
		this.sliders[this.pointer].style.display = "block";
		
		if (this.effect == "scroll_right")
			this.sliders[this.pointer].style.left = this.pos + "px";
		else
			this.sliders[this.pointer].style.top = this.pos + "px";

		window[this.timer] = setTimeout(function(){csobj.scrollR()}, 55);
	}
}

ContentSlider.resizeImg = function(id, w, h) {
	var allimgs = document.getElementById(id).getElementsByTagName("img");
	if (allimgs.length > 0) {
		var scale, dim;
		for (var i = 0; i < allimgs.length; i++) {
			dim = ContentSlider.getDimension(allimgs[i]);

			if (dim.width > w || dim.height > h) {
				scale = Math.min((w - dim.padH) / dim.width, (h - dim.padV) / dim.height);
				allimgs[i].style.width = parseInt(dim.width * scale) + "px";
				allimgs[i].style.height = parseInt(dim.height * scale) + "px";
			}
		}
	}
}

ContentSlider.getDimension = function(e) {
    var dsp = e.style.display;
    e.style.display = "block";

    var w = e.width;
    var h = e.height;
    var ph = e.offsetWidth - w;
    var pv = e.offsetHeight - h;
    e.style.display = dsp;

    return {width: w, height: h, padH: ph, padV: pv};
}