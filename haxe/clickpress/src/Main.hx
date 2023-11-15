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
		
		stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
		stage.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		stage.addEventListener(MouseEvent.MOUSE_UP, mouseUp);
		stage.addEventListener(Event.ENTER_FRAME, enterFrame);	
			
		graphics.lineStyle(0, 0, 0);

		trace("Done");
	}


	public function destroy() {
		stage.removeEventListener(KeyboardEvent.KEY_DOWN, keyDown);
		stage.removeEventListener(KeyboardEvent.KEY_UP, keyUp);
		stage.removeEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		stage.removeEventListener(MouseEvent.MOUSE_UP, mouseUp);
		stage.removeEventListener(Event.ENTER_FRAME, enterFrame);
	}


	public function enterFrame(e:Event) {

	}


	public function mouseDown(e:MouseEvent) { // Нажатие на кнопку мыши
		trace("mouseDown", e);
	}
	
	
	public function mouseUp(e:MouseEvent) { // Отпускание кнопки мыши
		trace("mouseUp", e);
	}
	
	
	public function keyDown(e:KeyboardEvent) { // Нажатие на клавишу клавиатуры
		trace("keyDown", e);
	}
	
	
	public function keyUp(e:KeyboardEvent) { // Отпускание клавиши клавиатуры
		trace("keyUp", e);
	}
	
	
	
}

