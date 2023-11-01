package;

import openfl.Vector;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;
import openfl.Lib;
import openfl.display.GradientType;
import openfl.geom.Matrix;


/**
 * Openfl clicking and pressing
 * @author xlift44
 */


class Main extends Sprite {
	
	public var maxX:Int = 1600;
	public var maxY:Int = 900;
	
	public var stepGridX:Int = 100;
	public var stepGridY:Int = 100;
	
	public var x0:Int = 0;
	public var y0:Int = 0;

	public function new() {
		super();
		
		trace("Start");

		graphics.clear();
		
		graphics.lineStyle(1, 0x333333);	
		for (x in 0...Std.int(maxX/stepGridX + 1)) {
			graphics.moveTo(x * stepGridX, 0);
			graphics.lineTo(x * stepGridX, maxY);	
		}
		for (y in 0...Std.int(maxY/stepGridY + 1)) {
			graphics.moveTo(0, y * stepGridY);
			graphics.lineTo(maxX, y * stepGridY);	
		}
		graphics.lineStyle(0, 0, 0);
	
		graphics.lineStyle(1, 0xFFFFFF);
		
		
		
		// ИЗОБРАЖЕНИЯ
		
		/*
		graphics.lineStyle(0, 0, 0);
		
		x0 = 0;
		y0 = 400;
		
		var bmp:Bitmap;
		bmp = new Bitmap();
		bmp.bitmapData = Assets.getBitmapData("img/logo2.png");
		bmp.x = x0;
		bmp.y = y0;
		bmp.width = 150;
		bmp.height = 150;
		addChild(bmp);
		
		x0 = 100;
		y0 = 400;
		
		var bmp2:Bitmap;
		bmp2 = new Bitmap();
		bmp2.bitmapData = Assets.getBitmapData("img/logo1.png");
		bmp2.x = x0;
		bmp2.y = y0;
		bmp2.width = 150;
		bmp2.height = 150;
		addChild(bmp2);
	
		var bmpIndex:Int = getChildIndex(bmp);
		var bmp2Index:Int = getChildIndex(bmp2);
		
		setChildIndex(bmp, bmp2Index);
		setChildIndex(bmp2, bmpIndex);
		*/
			
		trace("Done");

	}

	
}

