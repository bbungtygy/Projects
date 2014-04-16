# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.Exec = {
	disableForms: () -> disableForms(),
	enableForms: (keep_content) -> enableForms(keep_content),
	doLoad: () -> doLoad(),
	doComp: () -> doComp(),
	doCast: (msg) -> doCast(msg),
	resetForms: () -> resetForms()
}

centerX = (w) ->
	w = Number(String(w).replace(/[^0-9.]/g,''))
	($(document).width() / 2) - (w / 2)
centerY = (h) ->
	h = Number(String(h).replace(/[^0-9.]/g,''))
	($(document).scrollTop() + ($(window).height() / 2)) - (h / 2)
doCast = (msg) ->
	x = centerX($("#monitor").outerWidth())
	$("#monitor").html(msg).css({left:x}).fadeIn();

disableForms = () ->
	doLoad()
	$('form').each (i,f) ->
		s = $(f).find("input:submit")
		s = $(f).find("input:image") if s.length == 0
		if($(s) and not $(s).attr("disabled"))
			$(s).attr("longdesc", s.attr("value"))
			$(s).attr("value", "Loading..")
			$(s).attr("disabled", "disabled")

enableForms = (keep_content) ->
	doComp()
	$('form').each (i,f) ->
		s = $(f).find("input:submit")
		s = $(f).find("input:image") if s.length == 0
		if($(s) and $(s).attr("disabled"))
			$(s).attr("value", s.attr("longdesc"))
			$(s).removeAttr("disabled")
			f.reset() if not keep_content;

resetForms = () ->
	$('form').each (i,f) ->
		f.reset()

attachLoaderToForm = () ->
	$("form").each (i,f) ->
		if not $(f).hasClass("loader")
			$(f).submit -> disableForms()
			$(f).addClass("loader")

doLoad = () ->
	x = centerX(32)
	y = centerY(32)
	$("#loader").css({'left':x,'top':y})
	$("#loader").show()

doComp = () ->
	$("#loader").hide()

$(document).ready ->
#	$.ajaxSetup({
#		beforeSend:(xhr) -> doLoad(),
#		complete:(xhr) -> doComp()
#	})
	attachLoaderToForm()
