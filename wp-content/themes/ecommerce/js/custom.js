
/* index page (search button) script start*/
$("document").ready(function() {
	$("#cart").click(function(){
		$(".cart_box").slideToggle();	
	});
});
/* index page (search button) script end*/

/*img hover effect start*/
 $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );
/*img hover effect end*/

/*jquery scroll-box start*/
$(function () {
  $('#demo1').scrollbox();
  
  $('#demo2').scrollbox({
    linear: true,
    step: 1,
    delay: 0,
    speed: 100
  });
  
  $('#demo3').scrollbox({
    linear: true,
    step: 1,
    delay: 0,
    speed: 100
  });
  
  $('#demo4').scrollbox({
    linear: true,
    step: 1,
    delay: 0,
    speed: 100
  });
  
});
/*jquery scroll-box end*/

/*jquery accordian menu start*/
	  jQuery(document).ready(function(){
		  jQuery("#jquery-accordion-menu").jqueryAccordionMenu(); jQuery(".colors a").click(function(){
			  if($(this).attr("class") !="default"){
				  $("#jquery-accordion-menu").removeClass();
				  $("#jquery-accordion-menu").addClass("jquery-accordion-menu").addClass($(this).attr("class"));
			}
			else{
				$("#jquery-accordion-menu").removeClass(); 
				$("#jquery-accordion-menu").addClass("jquery-accordion-menu");
				}
			});
		}); 
/*jquery accordian menu end*/

/*auto slider start*/
$(window).load(function() {
    $("#flexiselDemo1").flexisel();
    $("#flexiselDemo2").flexisel({
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });

    $("#flexiselDemo3").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });

    $("#flexiselDemo4").flexisel({
        clone:false
    });
	
	$("#flexiselDemo5").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	
	$("#flexiselDemo6").flexisel({
        visibleItems: 2,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	
	$("#flexiselDemo7").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	
	$("#flexiselDemo8").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	
	$("#flexiselDemo9").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	
	$("#flexiselDemo10").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
	
	$("#flexiselDemo11").flexisel({
        visibleItems: 4,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 4000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
    
});
/*auto slider end*/

/*accordian slide start*/
$(document).ready(function(){
				$("#flip1").click(function(){
					$("#panel1").slideToggle("slow");
					$("#flip1 span").toggleClass("caret-up");				
				});
				$("#flip2").click(function(){
					$("#panel2").slideToggle("slow");
					$("#flip2 span").toggleClass("caret-up");
				});
				$("#flip3").click(function(){
					$("#panel3").slideToggle("slow");
					$("#flip3 span").toggleClass("caret-up");
				});
				$("#flip4").click(function(){
					$("#panel4").slideToggle("slow");
					$("#flip4 span").toggleClass("caret-up");
				});
				$("#flip5").click(function(){
					$("#panel5").slideToggle("slow");
					$("#flip5 span").toggleClass("caret-up");
				});
				$("#flip6").click(function(){
					$("#panel6").slideToggle("slow");
					$("#flip6 span").toggleClass("caret-up");
				});
				$("#flip7").click(function(){
					$("#panel7").slideToggle("slow");
					$("#flip7 span").toggleClass("caret-up");
				});
			});
/*accordian slide end*/

/*price range start*/
$(function() {
    $( "#pricerange-slider" ).slider({
      range: true,
      min: 0,
      max: 3000000,
      values: [ 100000, 1000000 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount" ).val( "$" + $( "#pricerange-slider" ).slider( "values", 0 ) +
      " - $" + $( "#pricerange-slider" ).slider( "values", 1 ) );
  });
 /*$('#sl2').slider();

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};	*/			
/*price range end*/

/*for zoom in start*/
 jQuery(document).ready(function($){
    
                    $('#etalage').etalage({
                        thumb_image_width: 300,
                        thumb_image_height: 400,
                        source_image_width: 900,
                        source_image_height: 1200,
                        show_hint: true,
                        click_callback: function(image_anchor, instance_id){
                            alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
                        }
                    });
    
                });
/*for zoom end*/

/*jQuery for page scrolling feature - requires jQuery Easing plugin*/
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

/*multi lavel accordian menu*/
jQuery(document).ready(function(){
	var accordionsMenu = $('.cd-accordion-menu');

	if( accordionsMenu.length > 0 ) {
		
		accordionsMenu.each(function(){
			var accordion = $(this);
			//detect change in the input[type="checkbox"] value
			accordion.on('change', 'input[type="checkbox"]', function(){
				var checkbox = $(this);
				console.log(checkbox.prop('checked'));
				( checkbox.prop('checked') ) ? checkbox.siblings('ul').attr('style', 'display:none;').slideDown(300) : checkbox.siblings('ul').attr('style', 'display:block;').slideUp(300);
			});
		});
	}
});