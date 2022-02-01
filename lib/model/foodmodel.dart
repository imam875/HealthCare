class FoodModel{

  String? name;
  String? title;
  String? subtitle;
  String? category;
  String? description;
  String? image;

  FoodModel( this.name,this.title, this.subtitle, this.category, this.description, this.image);

  FoodModel.fromJson(Map<String, dynamic> json){

    name = json['name']??"";
    title = json['title']??"";
    subtitle = json['subtitle']??"";
    category = json['category']??"";
    description = json['description']??"";
    image = json['image']??"";
  }

}