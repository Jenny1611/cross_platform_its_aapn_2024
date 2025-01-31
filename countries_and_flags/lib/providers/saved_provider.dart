import 'package:collection/collection.dart';
import 'package:countries_and_flags/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_provider.g.dart';

@riverpod
class Saved extends _$Saved {
  @override
  List<CountryModel> build() {
    ref.keepAlive();
    return [];
  }

  void addToSaved(CountryModel country) {
    state = [
      ...state,
      country
    ];
  }

  void removeFromSaved(int index) {
    state = [
      ...state.whereIndexed((i, element) => i != index)
    ];
  }
}
