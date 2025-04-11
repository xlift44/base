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
    var keyButton: KeyButton;

    for (k in keys) {
      keyButton = new KeyButton(k[2], k[3], k[4]);
      keyButton.x = xBorder + (k[0] - 1) * 50;
      keyButton.y = yBorder + (k[1] - 1) * 50;
      // keyButton.text = yBorder;
      addChild(keyButton);
    }

    // var keyButton = new KeyButton("Esc");
    // keyButton.x = xBorder;
    // keyButton.y = yBorder;
    // addChild(1, 1, keyButton);

    // keyButton = new KeyButton("~");
    // keyButton.x = xBorder;
    // keyButton.y = yBorder + 100;
    // addChild(keyButton);

    // keyButton = new KeyButton("1");
    // keyButton.x = xBorder + 50;
    // keyButton.y = yBorder + 100;
    // addChild(keyButton);

    // keyButton = new KeyButton("2");
    // keyButton.x = xBorder + 100;
    // keyButton.y = yBorder + 100;
    // addChild(keyButton);
  }

  public function initKeys() {
    keys = [
      [1, 1, 1, 1, "Esc"],
      [3, 1, 1, 1, "F1"],
      [4, 1, 1, 1, "F2"],
      [5, 1, 1, 1, "F3"],
      [6, 1, 1, 1, "F4"],
      [7.5, 1, 1, 1, "F5"],
      [8.5, 1, 1, 1, "F6"],
      [9.5, 1, 1, 1, "F7"],
      [10.5, 1, 1, 1, "F8"],
      [12, 1, 1, 1, "F9"],
      [13, 1, 1, 1, "F10"],
      [14, 1, 1, 1, "F11"],
      [15, 1, 1, 1, "F12"],

      [1, 3, 1, 1, "~"],
      [2, 3, 1, 1, "1"],
      [3, 3, 1, 1, "2"],
      [4, 3, 1, 1, "3"],
      [5, 3, 1, 1, "4"],
      [6, 3, 1, 1, "5"],
      [7, 3, 1, 1, "6"],
      [8, 3, 1, 1, "7"],
      [9, 3, 1, 1, "8"],
      [10, 3, 1, 1, "9"],
      [11, 3, 1, 1, "0"],
      [12, 3, 1, 1, "-"],
      [13, 3, 1, 1, "="],
      [14, 3, 2, 1, "<<"],

      [1, 4, 1.5, 1, "TAB"],
      [2.5, 4, 1, 1, "Q"],
      [3.5, 4, 1, 1, "W"],
      [4.5, 4, 1, 1, "E"],
      [5.5, 4, 1, 1, "R"],
      [6.5, 4, 1, 1, "T"],
      [7.5, 4, 1, 1, "Y"],
      [8.5, 4, 1, 1, "U"],
      [9.5, 4, 1, 1, "I"],
      [10.5, 4, 1, 1, "O"],
      [11.5, 4, 1, 1, "P"],
      [12.5, 4, 1, 1, "["],
      [13.5, 4, 1, 1, "]"],
      [14.5, 4, 1.5, 1, "\\"],

      [1, 5, 2, 1, "CapsLock"],
      [3, 5, 1, 1, "A"],
      [4, 5, 1, 1, "S"],
      [5, 5, 1, 1, "D"],
      [6, 5, 1, 1, "F"],
      [7, 5, 1, 1, "G"],
      [8, 5, 1, 1, "H"],
      [9, 5, 1, 1, "J"],
      [10, 5, 1, 1, "K"],
      [11, 5, 1, 1, "L"],
      [12, 5, 1, 1, ";"],
      [13, 5, 1, 1, "'"],
      [14, 5, 2, 1, "Enter"],

      [1, 6, 2.5, 1, "Shift"],
      [3.5, 6, 1, 1, "Z"],
      [4.5, 6, 1, 1, "X"],
      [5.5, 6, 1, 1, "C"],
      [6.5, 6, 1, 1, "V"],
      [7.5, 6, 1, 1, "B"],
      [8.5, 6, 1, 1, "N"],
      [9.5, 6, 1, 1, "M"],
      [10.5, 6, 1, 1, "<"],
      [11.5, 6, 1, 1, ">"],
      [12.5, 6, 1, 1, "/"],
      [13.5, 6, 2.5, 1, "Shift"],

      [1, 7, 1.5, 1, "Ctrl"],
      [2.5, 7, 1.5, 1, "Win"],
      [4, 7, 1.5, 1, "Alt"],
      [5.5, 7, 4.5, 1, "Space"],
      [10, 7, 1.5, 1, "Alt"],
      [11.5, 7, 1.5, 1, "Win"],
      [13, 7, 1.5, 1, "Menu"],
      [14.5, 7, 1.5, 1, "Ctrl"],

      [17, 1, 1, 1, "PS"],
      [18, 1, 1, 1, "SL"],
      [19, 1, 1, 1, "Pause"],

      [17, 3, 1, 1, "Ins"],
      [18, 3, 1, 1, "Home"],
      [19, 3, 1, 1, "PgUp"],
      [17, 4, 1, 1, "Del"],
      [18, 4, 1, 1, "End"],
      [19, 4, 1, 1, "PgDn"],

      [18, 6, 1, 1, "Up"],
      [17, 7, 1, 1, "Left"],
      [18, 7, 1, 1, "Down"],
      [19, 7, 1, 1, "Right"],

      [21, 3, 1, 1, "NumLock"],
      [22, 3, 1, 1, "/"],
      [23, 3, 1, 1, "*"],
      [24, 3, 1, 1, "-"],
      [21, 4, 1, 1, "7"],
      [22, 4, 1, 1, "8"],
      [23, 4, 1, 1, "9"],
      [24, 4, 1, 2, "+"],
      [21, 5, 1, 1, "4"],
      [22, 5, 1, 1, "5"],
      [23, 5, 1, 1, "6"],
      [21, 6, 1, 1, "1"],
      [22, 6, 1, 1, "2"],
      [23, 6, 1, 1, "3"],
      [24, 6, 1, 2, "Enter"],
      [21, 7, 2, 1, "0"],
      [23, 7, 1, 1, "."],
    ];

    // keys.push([1, 1, 1, 1, "Esc"]);
    // keys.push([2, 3, 1, 1, "1"]);
    // keys.push([3, 3, 1, 1, "2"]);
    // keys.push([4.5, 6, 4.5, 1, "Space"]);
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
    keyParam[32] = [4.5, 7, 4.5, 1, "Space"];

    var keyCode:Int = e.keyCode;
    var charCode:Int = e.charCode;
    var xBut:Int = 0;
    var yBut:Int = 0;
    var text:String = "";
  }
}

