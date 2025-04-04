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

	public function new(name:String, info:String)	{
		super();
		//this.x = 10;
		//this.y = 10;
    // this.width = 500;
    // this.height = 500;

    var color = View.colorOn;

		graphics.lineStyle(3, View.colorOff);
		graphics.beginFill(0x222222, 1);
    graphics.drawRoundRect(10, 10, 180, 80, 15, 15);

    graphics.lineStyle(3, color);
		graphics.beginFill(0, 1);
		graphics.drawRoundRect(10, 10, 80, 80, 15, 15);

		graphics.endFill();


    var text1:String = name;
    var tf:TextFormat = new TextFormat();

    tf.font = "Arial";
		tf.size = 24;
		tf.bold = true;
		tf.align = "center";
		tf.color = color;

		tText1 = new TextField();
    tText1.defaultTextFormat = tf;

    addChild(tText1);
		tText1.text = text1;
		tText1.x = 0;
		tText1.y = 32;


		var text2:String = info;
    var tf2:TextFormat = new TextFormat();

    tf2.font = "Arial";
		tf2.size = 12;
		tf2.bold = true;
		tf2.align = "left";
		tf2.color = View.colorOn;

		tText2 = new TextField();
    tText2.defaultTextFormat = tf2;

    addChild(tText2);
		tText2.text = text2;
		tText2.x = 100;
		tText2.y = 17;

	}

	public function off () {
		var color = 0x444444;

		graphics.lineStyle(3, View.colorOff);
		//graphics.beginFill(0, 1);
		graphics.drawRoundRect(10, 10, 80, 80, 15, 15);
		//graphics.endFill();

		tText1.textColor = View.colorOff;
		tText2.textColor = View.colorOff;
	}

	public function slide () {

		y += 60;
	}

}
