package;

import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;

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
        

        // var sticker = new Sticker("ТЕКСТ", "\n" + "charCode:777\n" + "keyCode:777\n" + "", true);
        // addChild(sticker);

        // sticker.x = xBorder + 400;
        // sticker.y = yBorder + 100;
        
        // var sticker = new Sticker("TAB", "текст\nдля кнопки\nчетыре строки\nегегеге", true);
        // addChild(sticker);
        // sticker.x = xBorder + 400;
        // sticker.y = yBorder + 200;
        
        // var sticker = new Sticker("Z", "текст\nдля кнопки\nчетыре строки\nегегеге",  true);
        // addChild(sticker);
        // sticker.x = xBorder + 400;
        // sticker.y = yBorder + 300;
        
    }

    public function drawButton(keyCode: Int, charCode: Int, on: Bool) {
        var xBut:Int = 0;
        var yBut:Int = 0;
        var text:String = "";
        switch (keyCode) {
            case 17: {
                text = "CTRL"; 
                xBut = xBorder; 
                yBut = yBorder; 
            }
            case 16: {
                text = "SHIFT"; 
                xBut = xBorder; 
                yBut = yBorder + stepGridY; 
            }
            case 18: {
                text = "ALT"; 
                xBut = xBorder; 
                yBut = yBorder + stepGridY * 2; 
            }
            default: {
                text = String.fromCharCode(charCode); 
                xBut = xBorder + Std.int(stepGridX * (countX / 2 - 1) * 2) ; 
                yBut = yBorder;
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

    // public function drawButton(key: Int, on: Bool) {
    //     var color = 0x444444;
    //     var text = "";
    //     var tf:TextFormat = new TextFormat(); 
    //     var tText:TextField = new TextField();

    //     var x:Int = 0;
    //     var y:Int = 0;
    //     var w:Int = 0;
    //     var h:Int = 0;

    //     switch (key) {
    //         case 17: {
    //             text = "CTRL"; 
    //             x = 20; 
    //             y = 20; 
    //             w = 100;
    //             h = 40;
    //         }
    //         case 16: {
    //             text = "SHIFT"; 
    //             x = 20; 
    //             y = 80; 
    //             w = 100;
    //             h = 40;
    //         }
    //         case 18: {
    //             text = "ALT"; 
    //             x = 20; 
    //             y = 140; 
    //             w = 100;
    //             h = 40;
    //         }
    //     }

    //     if (on) color = colorOn; else color = 0x444444;

    //     graphics.lineStyle(3, color);
    //     graphics.drawRoundRect(x, y, w, h, 15, 15);
        
    //     if (on) tf.color = color;
    //     else tf.color = 0x444444;
    //     tf.font = "Arial";
	// 	tf.size = 24;
	// 	tf.bold = true;
	// 	tf.align = "center";

    //     tText.defaultTextFormat = tf;
    //     tText.x = x;// + w/2;
    //     tText.y = y;// + h/2;
    //     tText.text = text;
    //     addChild(tText);

    // }

}