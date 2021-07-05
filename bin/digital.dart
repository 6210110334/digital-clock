class Digital {
  int num;

  Digital({this.num = 0});

  void inc() {
    num += 1;
  }

  void setDigital(int value) {
    num = value;
  }

  void reset() {
    num = 0;
  }

  String getDigital() {
    return num.toString();
  }
}
