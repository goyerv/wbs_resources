// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:http/src/client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../web_core/auth/auth.dart';
import '../../../../web_core/error/exceptions.dart';
import '../../models/homepage_model.dart';

abstract class HomepageRemoteDataSource {
  Future<HomepageModel> getResources(String? resourceID);
}


class HomepageRemoteDataSourceImpl implements HomepageRemoteDataSource {


  HomepageRemoteDataSourceImpl();

  
  final http.Client client = Client();
  final AuthenticationFragmentsImpl authFragments = AuthenticationFragmentsImpl(SharedPreferences.getInstance());


  @override
  Future<HomepageModel> getResources(String? resourceID) async {
    
    final _client = RetryClient(client);

    try {
      final response = await _client.post(
        Uri.https(
          'static.goyerv.com', 
          '/web/v1/homepage/get_resources',
          {
            'version': 1,
            'resourceID': resourceID,
            'userID': await authFragments.getUserID().then((value) => value.userID),
            'accessToken': await authFragments.getAccessToken().then((value) => value.accessToken),
            'refreshToken': await authFragments.getRefreshToken().then((value) => value.refreshToken),
            'webApiKey': await authFragments.getWebApiKey().then((value) => value.webApiKey)
          }
        ),
        headers: {'content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return HomepageModel.fromJson(json.decode(response.body));
        
      } else {
        throw ServerException();

      }

    } finally  {
      _client.close();

    }

  }
 

}