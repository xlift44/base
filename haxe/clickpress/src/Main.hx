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
 * @author xlift44@gmail.com
 */


class Main extends Sprite {
	
	public var maxX:Int = 810;
	public var maxY:Int = 1066;
	
	public var stepGridX:Int = 100;
	public var stepGridY:Int = 100;
	
	public var x0:Int = 0;
	public var y0:Int = 0;

	public function new() {
		super();
		
		trace("Start");

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

		// graphics.lineStyle(0, 0, 0);
	
		graphics.lineStyle(1, 0xFFFFFF);
		
		
			
		trace("Done");

	}

	
}

