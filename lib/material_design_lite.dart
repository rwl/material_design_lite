library material_design_lite;

import 'dart:js';

upgradeAllRegistered() {
  context['componentHandler']?.callMethod('upgradeAllRegistered');
}
