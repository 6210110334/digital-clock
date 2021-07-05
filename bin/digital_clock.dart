import 'clock.dart';

List<String> cmds = [
  'on 18 0',
  'set',
  'inc',
  'set',
  'inc',
  'set',
  'set',
  'inc',
  'inc'
];
void main(List<String> arguments) {
  final Clock time = Clock();
  cmds.forEach((cmd) {
    if (cmd.substring(0, 2) == 'on') {
      time.setTime(int.parse(cmd.substring(3, 5)), int.parse(cmd.substring(6)));
    } else if (cmd == 'set') {
      time.set();
    } else if (cmd == 'inc') {
      time.inc();
    }
  });
  print('Final time => ' + time.getTime());
}
