class gymmodel {
late  String id;
late  String name;
late  String title;
late  String subtitle;
late  String category;
late  String description;
late  String image;


gymmodel(this.id, this.name, this.title, this.subtitle, this.category,
      this.description, this.image);

  gymmodel.fromJson(Map<String, dynamic> json) {
    id = json['id']??"";
    name = json['name']??"";
    title = json['title']??"";
    subtitle = json['subtitle']??"";
    category = json['category']??"";
    description = json['description']??"";
    image = json['image']??"";
  }

}