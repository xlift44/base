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


class Main extends Sprite
{

	public var view:View;


	public function new() {
		super();

		trace("Main start");

		view = new View();
		addChild(view);

		stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
		stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
		stage.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		stage.addEventListener(MouseEvent.MOUSE_UP, mouseUp);
		stage.addEventListener(Event.ENTER_FRAME, enterFrame);

		trace("Main done");
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
		// trace("keyDown", e);
		// view.drawKey(e, true);
	}


	public function keyUp(e:KeyboardEvent) { // Отпускание клавиши клавиатуры
		// trace("keyUp", e);
		// view.drawKey(e, false);
	}



}

