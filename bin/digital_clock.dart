import 'dart:js_util';

void main(List<String> arguments) {
  print('Hello world!');
}

class Clock {
  Digital hours;
  Digital min;

  Clock(this.hours, this.min);

  void hoursInc() {
    this.hours.inc();
  }

  void minInc() {
    this.min.inc();
  }

  String getTime() {
    return hours.getDigital() + ' : ' + min.getDigital();
  }
}

class Digital {
  int num;

  Digital({this.num = 0});

  void inc() {
    this.num += 1;
  }

  String getDigital() {
    return num.toString();
  }
}
