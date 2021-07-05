class Digital {
  int num;

  Digital({this.num = 0});

  void inc() {
    this.num += 1;
  }

  void setDigital(int value) {
    this.num = value;
  }

  void reset() {
    this.num = 0;
  }

  String getDigital() {
    return num.toString();
  }
}
