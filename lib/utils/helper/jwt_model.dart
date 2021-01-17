class JWTModel {
  Map<String, dynamic> data;

  JWTModel({this.data});

  JWTModel.fromJson(Map<String, dynamic> json) {
    data = json['Data'];
  }
}
