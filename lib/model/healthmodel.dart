class HealthModel {
late String id;
late String name;
late String title;
late String description;
late String image;

  HealthModel(this.id, this.name, this.title, this.description, this.image);

  HealthModel.fromJson(Map<String, dynamic> HM) {
    id = HM['id']??"";
    name = HM['name']??"";
    title = HM['title']??"";
    description = HM['description']??"";
    image = HM['image']??"";
  }
}
