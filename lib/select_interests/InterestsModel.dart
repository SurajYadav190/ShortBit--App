class InterestModel{
  String _name;
  String _img;
  bool _isSelected =false ;


  InterestModel(this._name, this._img);



  bool get isSelected => _isSelected;

  set isSelected(bool value) {
    _isSelected = value;
  }

  String get img => _img;

  set img(String value) {
    _img = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}