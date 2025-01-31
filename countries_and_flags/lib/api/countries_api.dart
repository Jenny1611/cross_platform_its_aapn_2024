import 'package:countries_and_flags/api/http_client_provider.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_api.g.dart';

@riverpod
CountriesApi countriesApi(CountriesApiRef ref) {
  final client = ref.watch(httpClientProvider);
  final api = CountriesApi(client);
  return api;
}

class CountriesApi {
  CountriesApi(this.client);
  final Dio client;

  Future<List<CountryApiModel>> fetchAll() async {
    final response = await client.get("/all?fields=name,flags,cca2");
    return [
      for (final country in response.data!) CountryApiModel.fromJson(country)
    ];
  }

  Future<List<CountryApiModel>> searchBy({required String query}) async {
    final response = await client.get("/name/$query?fields=name,flags,cca2");
    return [
      for (final country in response.data!) CountryApiModel.fromJson(country)
    ];
  }
}
