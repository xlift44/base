package;

import openfl.Vector;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.Assets;
import openfl.Lib;
import openfl.display.GradientType;
import openfl.geom.Matrix;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.MouseEvent;


/**
 * Openfl clicking and pressing
 * @author xlift44@gmail.com
 */


class Main extends Sprite {
	
	public var count:Int = 0;

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
	
		graphics.lineStyle(1, 0xFFFFFF);
		
		addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
		addEventListener(KeyboardEvent.KEY_UP, keyUp);

		addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		addEventListener(MouseEvent.MOUSE_UP, mouseUp);
		addEventListener(Event.ENTER_FRAME, enterFrame);	
			
		graphics.lineStyle(0, 0, 0);

		trace("Done");
	}


	public function destroy() {
		removeEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		removeEventListener(MouseEvent.MOUSE_UP, mouseUp);
		removeEventListener(Event.ENTER_FRAME, enterFrame);
	}


	public function enterFrame(e:Event) {
		count++;
		if (count % 600 == 0) trace(count / 60);
		
	}


	public function mouseDown(e:MouseEvent) { // Нажатие на кнопку мыши
		trace("mouseDown");
	}
	
	
	public function mouseUp(e:MouseEvent) { // Отпускание кнопки мыши
		trace("mouseUp");
	}
	
	
	public function keyDown(e:KeyboardEvent) { // Нажатие на клавишу клавиатуры
		trace("keyDown", e.keyCode);
	}
	
	
	public function keyUp(e:KeyboardEvent) { // Отпускание клавиши клавиатуры
		trace("keyUp", e.keyCode);
	}
	
	
	
}

