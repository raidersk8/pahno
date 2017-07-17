
//Для инициализации плагинов которым важно дождаться загрузки картинок
$(window).load(
	function() {	
		$('#sliderScrollbar').sliderScrollbar({
			responsivecountitem: 4,
		});
		$('#preloader').hide();
		fullWindowHeight();
		//Добавляем к навигации элемент с классом to-the-left
		$('.navigation-menu > ul > li.active > a').before('<div class="to-the-left active-bg"></div>');
		$('.navigation-menu > ul > li.active > a').after('<div class="to-the-left childs-bg"></div>');
		toTheRight();
		toTheLeft();
		$('.front-page .brands .wrap-jcarousel').wrapJcarousel();		
	}
);
$( window ).resize(function() {
	fullWindowHeight();
	toTheRight();
	toTheLeft();
});
function fullWindowHeight() {
	//Делаем блоки с классом full-window-height на всю ширину
	if(!$('body').hasClass('is-tablet')) {
		if($('.full-window-height').length) {
			var fullScreenHeight = $(window).innerHeight();
			if(!$('body').hasClass('is-front-page')) {
				fullScreenHeight -= $('.header').height();
			}
			$('.full-window-height').innerHeight(fullScreenHeight);
		}
	}
}
//Элементы с классом to-the-right растягиваем по ширине до правого края
function toTheRight() {
	var element = $('.to-the-right');
	var windowWidth = $(window).innerWidth();
	for(var i=0; i<element.length; i++) {
		var offset = element.eq(i).offset();
		element.eq(i).width(windowWidth - offset.left);
	}
}
//Элементы с классом to-the-left растягиваем по ширине до левого края
function toTheLeft() {	
	var element = $('.to-the-left');
	var windowWidth = $(window).innerWidth();
	for(var i=0; i<element.length; i++) {
		//Очищаем style что бы не помешало перерисовки
		element.eq(i).attr('style', '');
		
		var offset = element.eq(i).offset();
		element.eq(i).width(offset.left + element.eq(i).width());
		element.eq(i).offset({left: 0});
	}
	
	if($('.navigation-menu > ul > li.active > .active-bg').length) {
		$('.navigation-menu > ul > li.active > .active-bg').height($('.navigation-menu > ul > li.active > a').innerHeight());
		$('.navigation-menu > ul > li.active > .childs-bg').height($('.navigation-menu > ul > li.active > ul').innerHeight());
	}
}
$('.wrap-input-text .placeholder').click(function(){
	$(this).parents('.wrap-input-text').find('input').focus();
});
$('.wrap-input-text input').focusin(function() {
	$(this).parents('.wrap-input-text').addClass('is-focus');
});
$('.wrap-input-text input').focusout(function() {
	if($(this).val() == '') {
		$(this).parents('.wrap-input-text').removeClass('is-focus');
	}
});
/*
//Иницализация костомных selectov
$('.selectpicker').selectpicker({
  style: 'btn-selectpicker'
});
//Иницализация костомных select который при переключении переходит по ссылке
$('.selectpicker-ref').selectpicker({
  style: 'btn-selectpicker' 
});
$('.selectpicker-ref').on('changed.bs.select', function (e) {
	location.href = $(this).selectpicker('val');
});

//Перелистование на главной на первом экране
$('.front-page .first-screen .slider').runByElements();
$('.scroll-to').scrollToAnim();

$(".fancybox-full-screen").fancybox({
	width: "100%", 
	height: "100%",
	autoSize: false,
	margin: [0,0 ,0, 0],
	padding: [0, 0, 0, 0],
	afterShow: function() {
		$('.fancybox-skin .jcarousel').jcarousel('reload');		
	}
});
$(".fancybox").fancybox({
	margin: [0,0 ,0, 0],
	padding: [40, 40, 0, 0],
});

function initInputSlider($element) {
	//Инпут в стиле слайдера
	$element.each(function(){
		 var $this = $(this);
		 var dataSetting = JSON.parse(JSON.stringify($this.data()));
		 var settings = $.extend( {
			range: true,
			slide: function( event, ui ) {
				newPositionSlider($(this), ui);
			},
			change: function( event, ui ) {
				newPositionSlider($(this), ui);
			}
		}, dataSetting);
		 $this.slider(settings);
	});	
}
function newPositionSlider(thisElem, ui) {
	var parent = thisElem.parents('.wrap-input-slider');
	var presentValue = parent.find('.present-value');
	presentValue.css({ left: ui.handle.offsetLeft });		
	presentValue.html(ui.value);
	
	var min = thisElem.slider( "option", "min" );
	
	if(ui.value > min) {
		presentValue.show();
	} else {
		presentValue.hide();
	}		
	
	var maxRightOffset = parent.find('.max-right').offset();
	var parentOffset = parent.offset();
	var presentValueWidth = presentValue.width();
	var maxRightOffsetLeft = maxRightOffset.left - parentOffset.left;
	
	
	if(ui.handle.offsetLeft + presentValueWidth > maxRightOffsetLeft) {
		presentValue.css({ left: maxRightOffsetLeft - presentValueWidth });		
		parent.addClass('is-right-value');
	}
	else {
		parent.removeClass('is-right-value');
	}	
	parent.find('input').val(ui.value);	
}
$(function() {
	initInputSlider($( ".wrap-input-slider .input-slider" ));
	///////////////////////////////////////////////////////////// инпут в стиле слайдера
	
	//Постраничный слайдер на весь экран
	$('#fullpage').fullpage({
		scrollBar: true,	
		hideElement: function($elem) { $elem.show(); },
	});	
	//Паралакс
	$.stellar();
});



//Программируем заказ
//Добавляем первую строку
addItemOrder();
$('body').on('click', '#all-item-order .item-order .add-item', function() {
	addItemOrder();
});
$('body').on('click', '#all-item-order .item-order .delete-item', function() {
	$(this).parents('.item-order').remove();
	$('#all-item-order .item-order .add-item').addClass('hidden');
	$('#all-item-order .item-order .add-item:last').removeClass('hidden');	
	$('#all-item-order .item-order .delete-item').removeClass('hidden');
	if($('#all-item-order .item-order .delete-item').length == 1) {
		$('#all-item-order .item-order .delete-item').addClass('hidden');
	}
});
function addItemOrder() {
	var cloneItemOrder = $('#template-item-order .item-order').clone();	
	cloneItemOrder.find('.selectpicker-fancybox-append').selectpicker({
		style: 'btn-selectpicker'
	});	
	initInputSlider(cloneItemOrder.find('.input-slider-append'));
	
	$('#all-item-order').append(cloneItemOrder);
	$('#all-item-order .item-order .add-item').addClass('hidden');
	$('#all-item-order .item-order .add-item:last').removeClass('hidden');	
	$('#all-item-order .item-order .delete-item').removeClass('hidden');	
	if($('#all-item-order .item-order .delete-item').length == 1) {
		$('#all-item-order .item-order .delete-item').addClass('hidden');
	}
	
}
//Прикрепляем файл
$('body').on('change', '.wrap-input-file input[type="file"]', function (event, files, label) {
	var file_name = this.value.replace(/\\/g, '/').replace(/.*\//, '');
	var parent = $(this).parents('.wrap-input-file');
	parent.find('.file-name-text').html(file_name);
});
function formControlFuncOrderOk() {
	//Проходимся по всему заказу и формируем текст
	var items = $('#all-item-order .item-order');
	var orderText = '';
	for(var i=0; i<items.length; i++) {
		orderText += items.eq(i).find('.selectpicker-fancybox-append').val() + ': ' + items.eq(i).find('.wrap-input-slider input').val() + '\n';
	}
	$('#text-order').val(orderText);
}

//Для Fancybox Закрываем fancybox после отправки сообщения
var timerMultiFancyboxClose;
function fancyboxClose() {
	timerMultiFancyboxClose = window.setInterval("runMultipleFancyboxClose();", 1000);
}
function runMultipleFancyboxClose()
{
	var text = $('.fancybox-skin div.wpcf7-response-output').html();
	if(text != '') {
		window.clearTimeout(timerMultiFancyboxClose);
		$.fancybox.open('<div class="fancybox-message">'+text+'</div>');
	}
}*/