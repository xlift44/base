package;
import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.display.Bitmap;

import openfl.Assets;

class Sticker extends Sprite
{

	public function new(name:String, info:String, on:Bool = true) 
	{
		super();
		//this.x = 10;
		//this.y = 10;
        // this.width = 500;
        // this.height = 500;

        var color = 0;
        if (on) color = View.colorOn; else color = 0x444444;

		graphics.lineStyle(3, View.colorOff);
		graphics.beginFill(0x222222, 1);
        graphics.drawRoundRect(10, 10, 180, 80, 15, 15);		

        graphics.lineStyle(3, color);
		graphics.beginFill(0, 1);
		graphics.drawRoundRect(10, 10, 80, 80, 15, 15);	

		graphics.endFill();


        var text = name;
        var tf:TextFormat = new TextFormat(); 
        var tText:TextField = new TextField();

        tf.font = "Arial";
		tf.size = 24;
		tf.bold = true;
		tf.align = "center";
		tf.color = color;

        tText.defaultTextFormat = tf;
        
        tText.text = text;
        addChild(tText);

		tText.x = 0;
		tText.y = 32;

		var text2 = info;
        var tf2:TextFormat = new TextFormat(); 
        var tText2:TextField = new TextField();
        var tText2t:TextField = new TextField();

        tf2.font = "Arial";
		tf2.size = 12;
		tf2.bold = true;
		tf2.align = "left";
		tf2.color = View.colorOff;

        tText2.defaultTextFormat = tf2;
        
        tText2.text = text2;
        addChild(tText2);

		tText2.x = 100;
		tText2.y = 17;	

		
		// var bmp:Bitmap = new Bitmap();
		// bmp.bitmapData = Assets.getBitmapData("img/button.png");
		// addChild(bmp);
		
		// useHandCursor = true;
		// buttonMode = true;
		
		// var textField = new TextField();
		// var textFormat = new TextFormat();
		
		// textFormat.font = "Arial";
		// textFormat.color = 0x000000;
		// textFormat.size = 18;
		// textFormat.bold = true;
		// textFormat.align = "center";

		// textField.mouseEnabled = false;
		// textField.width = this.width;
		// textField.defaultTextFormat = textFormat;
		// textField.text = name;
		// textField.y = 18;
		
		//addChild(textField);
	}
	
}