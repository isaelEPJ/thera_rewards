class AmostraModel {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String observation;
  final int percentDescount;
  final int idFarmacia;

  const AmostraModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.observation,
    required this.percentDescount,
    required this.idFarmacia,
  });
}
