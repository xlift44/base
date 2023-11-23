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
	public var x0:Int = 0;
	public var y0:Int = 0;


    public function new() {
		super();

        startScreen();
	}

    public function startScreen() {
        
        graphics.clear();

		graphics.lineStyle(1, 0x444444);
		graphics.drawRect(0, 0, maxX, maxY);
	
		var countX = 6; // Std.int(maxX/stepGridX);
		var countY = 8; // Std.int(maxY/stepGridY);

		for (y in 0...countY + 1) {
			graphics.moveTo(0, y * stepGridY);
			graphics.lineTo(countX * stepGridX, y * stepGridY);	
		}

		for (x in 0...countX + 1) {
			graphics.moveTo(x * stepGridX, 0);
			graphics.lineTo(x * stepGridX, countY * stepGridY);	
		}
	
		graphics.lineStyle(0, 0, 0);
        
        var sticker = new Sticker("ТЕКСТ", true);
        addChild(sticker);
        sticker.x = 200;
        sticker.y = 100;
    }

    public function drawButton(key: Int, on: Bool) {
        var color = 0x444444;
        var text = "";
        var tf:TextFormat = new TextFormat(); 
        var tText:TextField = new TextField();

        var x:Int = 0;
        var y:Int = 0;
        var w:Int = 0;
        var h:Int = 0;

        switch (key) {
            case 17: {
                text = "CTRL"; 
                x = 20; 
                y = 20; 
                w = 100;
                h = 40;
            }
            case 16: {
                text = "SHIFT"; 
                x = 20; 
                y = 80; 
                w = 100;
                h = 40;
            }
            case 18: {
                text = "ALT"; 
                x = 20; 
                y = 140; 
                w = 100;
                h = 40;
            }
        }

        if (on) color =0x00FF00; else color = 0x444444;

        graphics.lineStyle(3, color);
        graphics.drawRoundRect(x, y, w, h, 15, 15);
        
        if (on) tf.color = color;
        else tf.color = 0x444444;
        tf.font = "Arial";
		tf.size = 24;
		tf.bold = true;
		tf.align = "center";

        tText.defaultTextFormat = tf;
        tText.x = x;// + w/2;
        tText.y = y;// + h/2;
        tText.text = text;
        addChild(tText);

    }

}