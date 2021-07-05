import 'digital.dart';

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

  void setTime(int h, int m) {
    this.hours.setDigital(h);
    this.min.setDigital(m);
  }

  String getTime() {
    return hours.getDigital() + ' : ' + min.getDigital();
  }
}
