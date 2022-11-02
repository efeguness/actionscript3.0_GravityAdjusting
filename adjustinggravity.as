//ActionScript 3.0 Adjusting Gravity
//dev: https://www.linkedin.com/in/efegunes/

stop ();

var xvelocity = 0;
var yvelocity = 0;

stop ();

var Gravity = 1;
var Friction = .2; // <-- Character speed

stop ();

var rightPress : Boolean = false;
var leftPress : Boolean = false;
var upPress : Boolean = false;

stop ();

var onground : Boolean = false;

stop ();

this.addEventListener(Event.ENTER_FRAME, eFrame);
stage.addEventListener(KeyboardEvent.KEY_DOWN, keyPressed);
stage.addEventListener(KeyboardEvent.KEY_UP, keyRelease);

stop ();

function controls()
{
	if(rightPress)
	{
		rbox.text = "RIGHT (Pressed)";
		xvelocity += 3;
		character.scaleX = 1;
	}
	else
	{
		rbox.text = "Right ";
	}
	
	
	if(leftPress)
	{
		lbox.text = "LEFT (Pressed)";
		xvelocity -= 3;
		character.scaleX = -1;
	}
	else
	{
		lbox.text = "Left";
	}
	
	
	if(rightPress)
	{
		ubox.text = "UP (Pressed)";
	}
	else
	{
		ubox.text = "Up";
	}
}