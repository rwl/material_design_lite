library material_design_lite;

import 'dart:js';
import 'dart:html';

void upgradeAllRegistered() {
  context['componentHandler']?.callMethod('upgradeAllRegistered');
}

void upgradeElement(Element elem) {
  context['componentHandler']?.callMethod('upgradeElement', [elem]);
}

class MaterialCheckbox {
  JsObject proxy;

  MaterialCheckbox(Element elem) {
    var js = new JsObject.fromBrowserObject(elem);
    proxy = js['MaterialCheckbox'];
  }

  void check() {
    proxy?.callMethod('check');
  }

  void uncheck() {
    proxy?.callMethod('uncheck');
  }
}

class MaterialIconToggle {
  JsObject proxy;

  MaterialIconToggle(Element elem) {
    var js = new JsObject.fromBrowserObject(elem);
    proxy = js['MaterialIconToggle'];
  }

  void check() {
    proxy?.callMethod('check');
  }

  void uncheck() {
    proxy?.callMethod('uncheck');
  }
}

class MaterialRadio {
  JsObject proxy;

  MaterialRadio(Element elem) {
    var js = new JsObject.fromBrowserObject(elem);
    proxy = js['MaterialRadio'];
  }

  void check() {
    proxy?.callMethod('check');
  }

  void uncheck() {
    proxy?.callMethod('uncheck');
  }
}

class MaterialSwitch {
  JsObject proxy;

  MaterialSwitch(Element elem) {
    var js = new JsObject.fromBrowserObject(elem);
    proxy = js['MaterialSwitch'];
  }

  void on() {
    proxy?.callMethod('on');
  }

  void off() {
    proxy?.callMethod('off');
  }
}
