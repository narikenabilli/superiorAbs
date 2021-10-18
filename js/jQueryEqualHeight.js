$(document).ready(function(){	/*Please do not remove this line*/
//		jQuery Equal Height Divs Fix				//
//		By: Ayman Aboulnasr					//
//		Email: ayman@joptima.com			//
/*Important Notice: This jQuery plugin is not for free distribution, If you wish to use it kindly email me at ayman@joptima.com	*/



//Beginning of the Code
var firstDiv='#firstElement';	//Replace #firstElement with the id name of the first Div proceeded by # or if you are using class names proceed it with a dot (.)
var secondDiv='#secondElement';		//Replace #secondElement with the id name of the second Div proceeded by # or if you are using class names proceed it with a dot (.)



//End of Customization

//You do not need to change anything past this point
		var firstH = $(firstDiv).height();	//reads the height valule of the first Div
		var secondH = $(secondDiv).height();	//reads the height valule of the second Div

		if(firstH > secondH){	//Examining the 2 values to see which one is bigger.
			$(secondDiv).css('height',firstH)	// if the examination returns true then the second div gets the height value from the first div
		}

		else{
			$(firstDiv).css('height',secondH)	//// if the examination returns false then the first div gets the height value from the second div
		}// End of the if statement







//Fixing the window resize bug
	$(window).resize(function() { //Keeping the code running while resizing the window (should work on all browsers)
		var firstH = $(firstDiv).height();	//reads the height valule of the first Div
		var secondH = $(secondDiv).height();	//reads the height valule of the second Div

		if(firstH > secondH){	//Examining the 2 values to see which one is bigger.
			$(secondDiv).css('height',firstH)	// if the examination returns true then the second div gets the height value from the first div
		}

		else{
			$(firstDiv).css('height',secondH)	//// if the examination returns false then the first div gets the height value from the second div
		}// End of the if statement
	});
});
