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
    static inline public var colorOff = 0x004400;
    static inline public var colorGrey = 0x444444;

    public var stickers:Array<Sticker> = [];

    public function new() {
		super();

        startScreen();
	}


    public function startScreen() {
        
        xBorder = Std.int((maxX - stepGridX * countX) / 2);
        yBorder = xBorder;

        graphics.clear();

		graphics.lineStyle(1, colorGrey);
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

        // var controlKey:Array<Int> = [ 17, 16, 18];
        // var controlKeyStr:Array<String>;
        // controlKeyStr[17] = "CTRL";
        // controlKeyStr[16] = "SHIFT";
        // controlKeyStr[18] = "ALT";
        // var controlKeyY:Array<Int>;


        if (on) {

            var needSlide:Bool = true;

            if ( !(keyCode == 17 || keyCode == 16 || keyCode == 18) ) {
                for (stick in stickers) {
                    if (stick.keyCode == keyCode) {
                        needSlide = false;
                        break;
                    }
                }
                
                if (needSlide) 
                    for (stick in stickers) 
                        if ( !(stick.keyCode == 17 || stick.keyCode == 16 || stick.keyCode == 18) ) stick.slide();
            }

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
                    xBut = xBorder + stepGridX * 2; // Std.int(stepGridX * (countX / 2 - 1) * 2) ; 
                    yBut = yBorder + stepGridY;
                }
            }
            
            var sticker = new Sticker(text, "\n" 
            + "keyCode:" + keyCode + "\n" 
            + "charCode:" + charCode + "\n"+ "");
            sticker.keyCode = keyCode;
            addChild(sticker);

            stickers.push(sticker);

            sticker.x = xBut;
            sticker.y = yBut;
            trace(text, sticker.x, sticker.y);

            

        } else {
            for (stick in stickers) {
                if (stick.keyCode == keyCode) {
                    stick.off();
                    // if (stick.y > yBorder + stepGridY * countY) {
                    //     destroy(stick);
                    // }
                }
            }
            
        }
            
        

    }

}