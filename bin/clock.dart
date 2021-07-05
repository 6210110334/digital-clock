import 'digital.dart';

class Clock {
  Digital hours;
  Digital min;

  Clock(this.hours, this.min);

  void hoursInc() {
    if (this.hours.num < 24) {
      this.hours.inc();
    } else {
      this.hours.reset();
    }
  }

  void minInc() {
    if (this.min.num < 60) {
      this.min.inc();
    } else {
      this.min.reset();
      this.hours.inc();
    }
  }

  void setTime(int h, int m) {
    this.hours.setDigital(h);
    this.min.setDigital(m);
  }

  String getTime() {
    return hours.getDigital() + ' : ' + min.getDigital();
  }
}
