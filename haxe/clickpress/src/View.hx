package;

import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.MouseEvent;

class View extends Sprite
{
    public var maxX:Int = 810;
	public var maxY:Int = 1066;	
	public var stepGridX:Int = 100;
	public var stepGridY:Int = 100;
    public var countX = 8; // Std.int(maxX/stepGridX); 
    public var countY = 8; // Std.int(maxY/stepGridY);

    public var xBorder:Int;
    public var yBorder:Int;

    static inline public var colorOn = 0x00FF00;
    static inline public var colorOff = 0x006600;

    public function new() {
		super();

        startScreen();
	}

    public function startScreen() {
        
        xBorder = Std.int((maxX - stepGridX * countX) / 2);
        yBorder = xBorder;

        graphics.clear();

		graphics.lineStyle(1, 0x444444);
		graphics.drawRect(0, 0, maxX, maxY);
	
		for (y in 0...countY + 1) {
			graphics.moveTo(xBorder, yBorder + y * stepGridY);
			graphics.lineTo(xBorder + countX * stepGridX, yBorder + y * stepGridY);	
		}

		for (x in 0...countX + 1) {
			graphics.moveTo(xBorder + x * stepGridX, yBorder);
			graphics.lineTo(xBorder + x * stepGridX, yBorder + countY * stepGridY);	
		}
	
		graphics.lineStyle(0, 0, 0);
    }


    public function drawButton( e:KeyboardEvent, on: Bool) {

        var keyCode:Int = e.keyCode;
        var charCode:Int = e.charCode;
        var xBut:Int = 0;
        var yBut:Int = 0;
        var text:String = "";

        switch (keyCode) {
            case 17: {
                text = "CTRL"; 
                xBut = xBorder; 
                yBut = yBorder + stepGridY; 
            }
            case 16: {
                text = "SHIFT"; 
                xBut = xBorder; 
                yBut = yBorder + stepGridY * 2; 
            }
            case 18: {
                text = "ALT"; 
                xBut = xBorder; 
                yBut = yBorder + stepGridY * 3; 
            }
            default: {
                text = String.fromCharCode(charCode); 
                xBut = xBorder + Std.int(stepGridX * (countX / 2 - 1) * 2) ; 
                yBut = yBorder + stepGridY;
            }
        }
        var sticker = new Sticker(text, "\n" 
        + "keyCode:" + keyCode + "\n" 
        + "charCode:" + charCode + "\n"+ "", true);
        addChild(sticker);
        sticker.x = xBut;
        sticker.y = yBut;
        trace(text, sticker.x, sticker.y);
    }

}