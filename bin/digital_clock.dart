import 'clock.dart';
import 'digital.dart';

List<String> cmds = [
  'on 18 0',
  'set',
  'inc',
  'set',
  'inc',
  'set',
  'inc',
  'inc',
  'set'
];
void main(List<String> arguments) {
  Clock time = Clock(Digital(), Digital());
  cmds.forEach((cmd) {
    if (cmd.substring(0, 2) == 'on') {
      time.setTime(12, 0);
    } else if (cmd == 'set') {
      time.set();
    } else if (cmd == 'inc') {
      time.inc();
    }
  });
}
