import 'package:countries_and_flags/api/countries_api.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:countries_and_flags/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_provider.g.dart';

@riverpod
FutureOr<List<CountryModel>> countries(CountriesRef ref, String? query) async {
  final api = ref.watch(countriesApiProvider);
  List<CountryApiModel> result;
  if (query != null) {
    result = await api.searchBy(query: query);
  } else {
    result = await api.fetchAll();
  }
  return result;
}
