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
  public var countY = 19; // Std.int(maxY/stepGridY);

  public var xBorder:Int;
  public var yBorder:Int;

  static inline public var colorOn = 0x00FF00;
  static inline public var colorBkOn = 0x004400;
  static inline public var colorOff = 0x004400;
  static inline public var colorBkOff = 0x000000;
  static inline public var colorGrey = 0x444444;

  public var keys:Array<Array<Dynamic>> = []; // данные кнопок клавиатуры

  public var keyButtons:Array<KeyButton> = []; // кнопки клавиатуры на экране

  public function new() {
    super();

    xBorder = Std.int((maxX - stepGridX * countX) / 2);
    yBorder = xBorder;

    startScreen(); // сетка

    // позиция X, позиция Y, ширина, высота, текст, keycode
    keys = [
      [1, 1, 1, 1, "Esc", 27],
      [3, 1, 1, 1, "F1", 112],
      [4, 1, 1, 1, "F2", 113],
      [5, 1, 1, 1, "F3", 114],
      [6, 1, 1, 1, "F4", 115],
      [7.5, 1, 1, 1, "F5", 116],
      [8.5, 1, 1, 1, "F6", 117],
      [9.5, 1, 1, 1, "F7", 118],
      [10.5, 1, 1, 1, "F8", 119],
      [12, 1, 1, 1, "F9", 120],
      [13, 1, 1, 1, "F10", 121],
      [14, 1, 1, 1, "F11", 122],
      [15, 1, 1, 1, "F12", 123],

      [1, 3, 1, 1, "~", 192],
      [2, 3, 1, 1, "1", 49],
      [3, 3, 1, 1, "2", 50],
      [4, 3, 1, 1, "3", 51],
      [5, 3, 1, 1, "4", 52],
      [6, 3, 1, 1, "5", 53],
      [7, 3, 1, 1, "6", 54],
      [8, 3, 1, 1, "7", 55],
      [9, 3, 1, 1, "8", 56],
      [10, 3, 1, 1, "9", 57],
      [11, 3, 1, 1, "0", 48],
      [12, 3, 1, 1, "-", 189],
      [13, 3, 1, 1, "=", 187],
      [14, 3, 2, 1, "<<", 8],

      [1, 4, 1.5, 1, "TAB", 9],
      [2.5, 4, 1, 1, "Q", 81],
      [3.5, 4, 1, 1, "W", 87],
      [4.5, 4, 1, 1, "E", 69],
      [5.5, 4, 1, 1, "R", 82],
      [6.5, 4, 1, 1, "T", 84],
      [7.5, 4, 1, 1, "Y", 89],
      [8.5, 4, 1, 1, "U", 85],
      [9.5, 4, 1, 1, "I", 73],
      [10.5, 4, 1, 1, "O", 79],
      [11.5, 4, 1, 1, "P", 80],
      [12.5, 4, 1, 1, "[", 219],
      [13.5, 4, 1, 1, "]", 221],
      [14.5, 4, 1.5, 1, "\\", 220],

      [1, 5, 2, 1, "CapsLock", 20],
      [3, 5, 1, 1, "A", 65],
      [4, 5, 1, 1, "S", 83],
      [5, 5, 1, 1, "D", 68],
      [6, 5, 1, 1, "F", 70],
      [7, 5, 1, 1, "G", 71],
      [8, 5, 1, 1, "H", 72],
      [9, 5, 1, 1, "J", 74],
      [10, 5, 1, 1, "K", 75],
      [11, 5, 1, 1, "L", 76],
      [12, 5, 1, 1, ";", 186],
      [13, 5, 1, 1, "'", 222],
      [14, 5, 2, 1, "Enter", 13],

      [1, 6, 2.5, 1, "Shift", 16],
      [3.5, 6, 1, 1, "Z", 90],
      [4.5, 6, 1, 1, "X", 88],
      [5.5, 6, 1, 1, "C", 67],
      [6.5, 6, 1, 1, "V", 86],
      [7.5, 6, 1, 1, "B", 66],
      [8.5, 6, 1, 1, "N", 78],
      [9.5, 6, 1, 1, "M", 77],
      [10.5, 6, 1, 1, "<", 188],
      [11.5, 6, 1, 1, ">", 190],
      [12.5, 6, 1, 1, "/", 191],
      [13.5, 6, 2.5, 1, "Shift", 16],

      [1, 7, 1.5, 1, "Ctrl", 17],
      [2.5, 7, 1.5, 1, "Win", 15],
      [4, 7, 1.5, 1, "Alt", 18],
      [5.5, 7, 4.5, 1, "Space", 32],
      [10, 7, 1.5, 1, "Alt", 18],
      [11.5, 7, 1.5, 1, "Win", 15],
      [13, 7, 1.5, 1, "Menu", 15],
      [14.5, 7, 1.5, 1, "Ctrl", 17],

      [17, 1, 1, 1, "PS", 301],
      [18, 1, 1, 1, "SL", 145],
      [19, 1, 1, 1, "Pause", 19],

      [17, 3, 1, 1, "Ins", 45],
      [18, 3, 1, 1, "Home", 36],
      [19, 3, 1, 1, "PgUp", 33],
      [17, 4, 1, 1, "Del", 46],
      [18, 4, 1, 1, "End", 35],
      [19, 4, 1, 1, "PgDn", 34],

      [18, 6, 1, 1, "Up", 38],
      [17, 7, 1, 1, "Left", 37],
      [18, 7, 1, 1, "Down", 40],
      [19, 7, 1, 1, "Right", 39],

      [21, 3, 1, 1, "NumLock", 144],
      [22, 3, 1, 1, "/", 111],
      [23, 3, 1, 1, "*", 106],
      [24, 3, 1, 1, "-", 109],
      [21, 4, 1, 1, "7", 103],
      [22, 4, 1, 1, "8", 104],
      [23, 4, 1, 1, "9", 105],
      [24, 4, 1, 2, "+", 107],
      [21, 5, 1, 1, "4", 100],
      [22, 5, 1, 1, "5", 101],
      [23, 5, 1, 1, "6", 102],
      [21, 6, 1, 1, "1", 97],
      [22, 6, 1, 1, "2", 98],
      [23, 6, 1, 1, "3", 99],
      [24, 6, 1, 2, "Enter", 13],
      [21, 7, 2, 1, "0", 96],
      [23, 7, 1, 1, ".", 110],
    ];

    for (k in keys) {
      var keyButton = new KeyButton(k);
      keyButton.x = xBorder + (k[0] - 1) * 50;
      keyButton.y = yBorder + (k[1] - 1) * 50;
      keyButton.keyCode = k[5];
      addChild(keyButton);
      keyButtons.push(keyButton);
    }

  }

  public function startScreen() {
    // границы экрана
    graphics.clear();
    graphics.lineStyle(1, colorGrey);
    graphics.drawRect(0, 0, maxX, maxY);

    // сетка
    for (y in 0...countY + 1) {
      graphics.moveTo(xBorder, yBorder + y * stepGridY);
      graphics.lineTo(xBorder + countX * stepGridX, yBorder + y * stepGridY);
    }
    for (x in 0...countX + 1) {
      graphics.moveTo(xBorder + x * stepGridX, yBorder);
      graphics.lineTo(xBorder + x * stepGridX, yBorder + countY * stepGridY);
    }
    graphics.lineStyle(0, 0, 0);

    // тачпад
    graphics.lineStyle(3, View.colorOff);
		graphics.beginFill(View.colorBkOff, 1);

    graphics.drawRoundRect(
      xBorder + 1, yBorder + stepGridY * 8 + 1,
      stepGridX * 9 - 2, stepGridY * 6 - 2, 0, 0);
    graphics.drawRoundRect(
      xBorder + 1, yBorder + stepGridY * 14 + 1,
      stepGridX * 4.5 - 2, stepGridY * 2 - 2, 20, 20);
    graphics.drawRoundRect(
      xBorder + stepGridX * 4.5 + 1, yBorder + stepGridY * 14 + 1,
      stepGridX * 4.5 - 2, stepGridY * 2 - 2, 20, 20);

    // мышь
    graphics.lineStyle(3, View.colorOff);
		graphics.beginFill(View.colorBkOff, 1);

    graphics.drawRoundRectComplex(
      xBorder + stepGridX * 10 + 1, yBorder + stepGridY * 8 + 1,
      stepGridX * 2 - 2, stepGridY * 3 - 2, 100, 0, 0, 0);

    graphics.drawRoundRect(
      xBorder + stepGridX * 12 + 1, yBorder + stepGridY * 8 + 1,
      stepGridX * 1 - 2, stepGridY * 3 - 2, 0, 0);

    graphics.drawRoundRectComplex(
      xBorder + stepGridX * 13 + 1, yBorder + stepGridY * 8 + 1,
      stepGridX * 2 - 2, stepGridY * 3 - 2, 0, 100, 0, 0);


    graphics.drawRoundRectComplex(
      xBorder + stepGridX * 10 + 1, yBorder + stepGridY * 11 + 1,
      stepGridX * 5 - 2, stepGridY * 5 - 2, 0, 0, 100, 100);

    // табло
    graphics.lineStyle(3, View.colorOff);
		graphics.beginFill(View.colorBkOff, 1);

    graphics.drawRoundRect(
      xBorder + stepGridX * 16 + 1, yBorder + stepGridY * 8 + 1,
      stepGridX * 8 - 2, stepGridY * 8 - 2, 0, 0);

    graphics.endFill();
  }

  public function switchKeyButton(keyCode:Int, on: Bool) {
    for (k in keyButtons) {
      if (k.keyCode == keyCode) {
        if (on) k.on(); else k.off();
      }
    }
  }

}

