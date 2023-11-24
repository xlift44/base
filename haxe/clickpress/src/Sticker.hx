package;
import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.display.Bitmap;

import openfl.Assets;

class Sticker extends Sprite
{

	public function new(name:String, on:Bool = true) 
	{
		super();
		//this.x = 10;
		//this.y = 10;
        // this.width = 500;
        // this.height = 500;

        var color = 0xCE1111;
        if (on) color =0x00FF00; else color = 0x444444;

        graphics.lineStyle(3, color);
		graphics.beginFill(0x222222, 1);

        graphics.drawRoundRect(10, 10, 180, 80, 15, 15);		
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

		//tText.x = this.width / 2 - tText.width / 2;
		tText.x = 0;
		tText.y = 32;

		trace("this: ",this.width, this.height);
		trace("text:", tText.width, tText.height);



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