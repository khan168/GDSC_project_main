class dataModelUser{
  late final String uid;
  dataModelUser({required this.uid});

}

class dataModelUserBrewIng{
  final String? uid;
  final String? name;
  final String? sugars;
  final int? strength;

  dataModelUserBrewIng({ this.uid, this.sugars, this.strength, this.name });
}