import 'digital.dart';

enum Status { Hours, Min, Ready }

class Clock {
  Digital hours;
  Digital min;
  Status status = Status.Ready;

  Clock(this.hours, this.min);

  void inc() {
    if (status == Status.Hours) {
      if (hours.num != 23) {
        hours.inc();
      } else {
        hours.reset();
      }
      print('Hours : ' + hours.getDigital());
    } else if (status == Status.Min) {
      if (min.num != 59) {
        min.inc();
      } else {
        min.reset();
        hours.inc();
      }
      print('Min : ' + min.getDigital());
    }
  }

  void set() {
    if (status == Status.Ready) {
      status = Status.Hours;
    } else if (status == Status.Hours) {
      status = Status.Min;
    } else {
      status = Status.Ready;
      print(getTime());
    }
  }

  void setTime(int h, int m) {
    hours.setDigital(h);
    min.setDigital(m);
  }

  String getTime() {
    return hours.getDigital() + ' : ' + min.getDigital();
  }
}
