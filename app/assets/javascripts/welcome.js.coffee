# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$('.ThumbaGallery').Thumba({
		effectThumba: 'easeOutBack', 					# Effect of the Thumba Div when it moves **/
		effectDuration: 400, 							# speed of the Thumba div moves **/
		keyNav: true, 									#/** Allow navigation with left & right arrows or not **/
		mouseNav: true, 								#/** Allow navigation with mouse or not **/
		coeffZoom: 3, 								#/** coefficent of the image Zoom **/
		speedOpenLightBox: 100, 				#		/* speed in ms of the opening of Thumba LightBox */
		legendPadding: 5,						 	#	/** padding of the paragraph containing the image legend **/
		defaultAlt: 'Something happened with the image that was supposed to be here. Sorry :(', 	#/** Utils to get a nice SEO :) - Alt value when link has no title **/
		autoCorrect: true,							#	/** Auto correct the lightbox position if lightbox is displayed out of the browser - cause to the absolute position, it can be negative values **/
		legendOpacity: 0.8
		})