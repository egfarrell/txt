// Wait until document is loaded
    // Wrap the function with:
    $( ... )

// links
    - $MY_NOTES/cs/misc/crockford_javascript.txt

// Misc
    - Is javascript executing? : Alert(1)
    - sort order               : 'ABCD' < 'abcd'
    - Pause                    : setTimeout(SomeMessage, 5000);
    - Create repeating call    : setInterval(SomeFunction, 5000);
    - "switch"                 : explictly add 'break' after each 'case' clause
    - "with"                   : dont use it!


// useful tools
	- firebug
	- Yslow for firebug
	- DevBar for firebug
	- IE DeveloperBar
	- Visual Web Developer Express

// Case sensitive
    // wrong!
        alert("Hello World");
    // right!
        Alert("Hello World");
	// variable names are case-sensitive
	// but whitespace insensitive

// Inline JavaScript
	<script> Alert("Hello World") </script>

// Source File Javascript (better)
	<script src="myscript.js"> </script>

// place javascript?
	- at the bottom of the HTML file
	- let page load first

// variables
	var somevariable;
	- now somevariable is UNDEFINED

// Curly Braces
	K&R style
	Allman style

// equality
	=	assignment
	==	equality        5 == "5"  true! same value
	===	strict equality 5 === "5" false! must be same value and same type!

// Ternary Operator
	condition ? true : false
	(player1 > player2) ? player1 : player2

// firebug output
	console.log("hello world")
	console.log(foo, bar)
	also: console.debug,
	console.info,
	console.warn,
	console.error

// looping
	- "continue": we are finished just with this single iteration only
	- "break":    break out of loop completely

// functions
	function FUNCTION_NAME (param1, param2) {
		myvar = param1 * param2;
		return myvar;
	}
	// note: extra parameters passed in are ignored.

// arrays
	- are dynamic OBJECTS
	var multipleValues = []
	var multipleValues = new Array();
	var multipleValues = Array();

// concatenation
	var foo = 5;
	var bar = "5";
    // write out 55 - one is a string
	console.log(foo + bar)
	// so if one is a string, treats all as strings
	console.log(foo * bar) // NaN
	// can use isNaN to check for numbers!

// math object
	var y = math.round(x)
	var y = math.max(a,b)

// string methods
	phrase.length
	phrase.toUpperCase
	var words = phrase.split(" ")
	var position = phrase.indexOf("groovy")
	// "-1" returned if search string not found
	phrase.slice     (start-pos, end-pos)
	phrase.substring (start-pos, end-pos)
	phrase.substr    (start-pos, length)

// dates
	var y2k = new Date(year, month (zero based), day)
	// year month day hours minutes seconds
	var y2k = new Date(2000, 0, 1, 0, 0, 0)
	today.getMonth
	today.getFullYear
	today.getDate // returns day of MONTH 1 - 31
	today.getDay // 0 to 6, 0 == Sunday
	today.setMonth

	// number of milliseconds since 1970, useful for date comparison
	today.getTime

// comparing dates
	var date1 = new Date(2000, 0, 1)
	var date2 = new Date(2000, 0, 1)
	if (date1 == date2) ... false! That checks are they the same object
	if (date1.getTime == date2.getTime) ... True!
