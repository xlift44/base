package;

import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.MouseEvent;

class View extends Sprite
{
  public var maxX:Int = 1280;
  public var maxY:Int = 1024;
  public var stepGridX:Int = 50;
  public var stepGridY:Int = 50;
  public var countX = 24; // Std.int(maxX/stepGridX);
  public var countY = 7; // Std.int(maxY/stepGridY);

  public var xBorder:Int;
  public var yBorder:Int;

  static inline public var colorOn = 0x00FF00;
  static inline public var colorOff = 0x004400;
  static inline public var colorGrey = 0x444444;

  public var keys:Array<Array<Dynamic>> = [];
  // x, y, xx, yy, text
  //keys[??] = [1, 1, 1, 1, "Esc"];
  // keys.push([1, 2, 1, 1, "1"]);
  // keys[49] = [1, 2, 1, 1, "1"];
  // keys[50] = [2, 2, 1, 1, "1"];
  // keys[32] = [4.5, 6, 4.5, 1, "Space"];

  // public var keyButtons:Array<keyButton> = [];

  public function new() {
    super();

    xBorder = Std.int((maxX - stepGridX * countX) / 2);
    yBorder = xBorder;

    startScreen();
    startKeyboard();

    initKeys();
    // for (k in keys) {
    //   trace(k);
    // }

    var keyButton = new KeyButton("Esc");
    keyButton.x = xBorder;
    keyButton.y = yBorder;
    addChild(keyButton);

    keyButton = new KeyButton("~");
    keyButton.x = xBorder;
    keyButton.y = yBorder + 100;
    addChild(keyButton);

    keyButton = new KeyButton("1");
    keyButton.x = xBorder + 50;
    keyButton.y = yBorder + 100;
    addChild(keyButton);

    keyButton = new KeyButton("2");
    keyButton.x = xBorder + 100;
    keyButton.y = yBorder + 100;
    addChild(keyButton);
  }

  public function initKeys() {
  keys.push([2, 3, 1, 1, "1"]);
  keys.push([3, 3, 1, 1, "2"]);
  keys.push([4.5, 6, 4.5, 1, "Space"]);
  trace(keys);
  }

  public function startScreen() {
    graphics.clear();
    graphics.lineStyle(1, colorGrey);
    graphics.drawRect(0, 0, maxX, maxY);
  }

  public function startKeyboard() {
    for (y in 0...countY + 1) {
      graphics.moveTo(xBorder, yBorder + y * stepGridY);
      graphics.lineTo(xBorder + countX * stepGridX, yBorder + y * stepGridY);
    }
    for (x in 0...countX + 1) {
      graphics.moveTo(xBorder + x * stepGridX, yBorder);
      graphics.lineTo(xBorder + x * stepGridX, yBorder + countY * stepGridY);
    }
    graphics.lineStyle(0, 0, 0);
  }

  public function drawKey(e:KeyboardEvent, on: Bool) {
    var keyParam:Array<Array<Dynamic>> = [];
    // x, y, xx, yy, text
    //keyParam[??] = [1, 1, 1, 1, "Esc"];
    keyParam[49] = [1, 2, 1, 1, "1"];
    keyParam[50] = [2, 2, 1, 1, "1"];
    keyParam[32] = [4.5, 6, 4.5, 1, "Space"];

    var keyCode:Int = e.keyCode;
    var charCode:Int = e.charCode;
    var xBut:Int = 0;
    var yBut:Int = 0;
    var text:String = "";
  }
}

