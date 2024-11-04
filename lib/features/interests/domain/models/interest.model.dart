class InterestModel {
  final String? interest;
  final String? imgPath;

  InterestModel({required this.interest, required this.imgPath});

  InterestModel copyWith({
    String? interest,
    String? imgPath,
  }) {
    return InterestModel(
      interest: interest ?? this.interest,
      imgPath: imgPath ?? this.imgPath,
    );
  }
}

class PickedInterestsModel {
  final List<InterestModel> pickedInterests;

  PickedInterestsModel({required this.pickedInterests});

  PickedInterestsModel copyWith({
    List<InterestModel>? pickedInterests,
  }) {
    return PickedInterestsModel(
      pickedInterests: pickedInterests ?? this.pickedInterests,
    );
  }
}
