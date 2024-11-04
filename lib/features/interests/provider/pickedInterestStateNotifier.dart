import 'package:brillo_sportz/features/interests/domain/models/interest.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pickedInterestStateNotifier.g.dart';

@riverpod
class PickedInterestsStateNotifier extends _$PickedInterestsStateNotifier {
  @override
  PickedInterestsModel build() {
    return PickedInterestsModel(pickedInterests: []);
  }

  List<InterestModel> interestType = [
    InterestModel(interest: 'Soccer', imgPath: 'assets/svgs/soccer.jpeg'),
    InterestModel(
        interest: 'Basketball', imgPath: 'assets/svgs/basketball.jpeg'),
    InterestModel(interest: 'Tennis', imgPath: 'assets/svgs/tennis.jpeg'),
    InterestModel(interest: 'Baseball', imgPath: 'assets/svgs/baseball.jpeg'),
    InterestModel(interest: 'Golf', imgPath: 'assets/svgs/golf.jpeg'),
    InterestModel(interest: 'Swimming', imgPath: 'assets/svgs/swimming.jpeg'),
    InterestModel(interest: 'Boxing', imgPath: 'assets/svgs/boxing.jpeg'),
    InterestModel(interest: 'Cycling', imgPath: 'assets/svgs/cycling.jpeg'),
    InterestModel(interest: 'Running', imgPath: 'assets/svgs/running.jpeg'),
    InterestModel(interest: 'Volleyball', imgPath: 'assets/svgs/volley.jpeg'),
  ];

  void toggleInterestSelection(InterestModel interest) {
    final currentList = state.pickedInterests;
    final isSelected = currentList.contains(interest);

    final updatedList = isSelected
        ? currentList.where((item) => item != interest).toList()
        : [...currentList, interest];

    // Update the state
    state = state.copyWith(pickedInterests: updatedList);
  }
}
