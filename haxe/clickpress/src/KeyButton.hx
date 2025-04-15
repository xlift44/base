package;
import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.display.Bitmap;

import openfl.Assets;

class KeyButton extends Sprite
{
	public var keyCode:Int = 0;

	public var tText1:TextField;
	public var tText2:TextField;


	public function new(w:Float, h:Float, name:String)	{
		super();

    var color = View.colorOff;

		// graphics.lineStyle(3, View.colorOff);
		// graphics.beginFill(0x222222, 1);
    // graphics.drawRoundRect(10, 10, 180, 80, 15, 15);


    // graphics.lineStyle(3, color);
		// graphics.beginFill(0, 1);
    // graphics.drawRoundRect(0, 0, 50 * w, 50 * h, 20, 20);
		// graphics.endFill();


    var text1:String = name;
    var tf:TextFormat = new TextFormat();
    tf.font = "Arial";
		tf.size = 20;
		tf.bold = true;
		tf.align = "center";
		// tf.color = color;

		tText1 = new TextField();
    tText1.defaultTextFormat = tf;


		tText1.text = text1;
		tText1.x = -25 + (w - 1) * 25;
		tText1.y = 10 + (h - 1) * 25;

    off();

    addChild(tText1);

		// var text2:String = info;
    // var tf2:TextFormat = new TextFormat();

    // tf2.font = "Arial";
		// tf2.size = 12;
		// tf2.bold = true;
		// tf2.align = "left";
		// tf2.color = View.colorOn;

		// tText2 = new TextField();
    // tText2.defaultTextFormat = tf2;

    // addChild(tText2);
		// tText2.text = text2;
		// tText2.x = 100;
		// tText2.y = 17;

	}

	public function on () {
    graphics.lineStyle(3, View.colorOn);
		graphics.beginFill(View.colorBkOn, 1);
    graphics.drawRoundRect(0, 0, 50 * 1, 50 * 1, 20, 20);
		graphics.endFill();

    // tf.color = color;
    tText1.textColor = View.colorOn;

	// 	graphics.lineStyle(3, View.colorOn);
	// 	graphics.drawRoundRect(10, 10, 80, 80, 15, 15);
	// 	tText1.textColor = View.colorOn;
	// 	tText2.textColor = View.colorOn;
	}

	public function off () {
    graphics.lineStyle(3, View.colorOff);
		graphics.beginFill(View.colorBkOff, 1);
    graphics.drawRoundRect(0, 0, 50 * 1, 50 * 1, 20, 20);
		graphics.endFill();

    tText1.textColor = View.colorOff;
	// 	graphics.lineStyle(3, View.colorOff);
	// 	graphics.drawRoundRect(10, 10, 80, 80, 15, 15);
	// 	tText1.textColor = View.colorOff;
	// 	tText2.textColor = View.colorOff;
	}

}
