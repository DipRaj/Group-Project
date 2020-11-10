class User {
  String _uName;
  String _profileImg;
  String _password;
  int _phone;
  String _city;
  String _area;
  String _gmail;

  User(
    this._uName,
    this._profileImg,
    this._password,
    this._phone,
    this._city,
    this._area,
    this._gmail,
  );

  String getUName() {
    return _uName;
  }

  String getProfileImage() {
    return _profileImg;
  }

  String getPassword() {
    return _password;
  }

  int getPhone() {
    return _phone;
  }

  String getCity() {
    return _city;
  }

  String getArea() {
    return _area;
  }

  String getGmail() {
    return _gmail;
  }

  void setProfileImage(String newImage) {
    this._profileImg = newImage;
  }
  void setPassword(String newPassword) {
    this._password = newPassword;
  }

  void setPhone(int newPhone) {
    this._phone = newPhone;
  }

  void setCity(String newCity) {
    this._city = newCity;
  }

  void setArea(String newArea) {
    this._area = newArea;
  }

  void setGmail(String newGmail) {
    this._gmail = newGmail;
  }
}
