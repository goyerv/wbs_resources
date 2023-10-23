// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor








import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../error/errors.dart';
import '../error/exceptions.dart';
import 'auth_model.dart';

const String accessToken = "access_token_key";
const String refreshToken = "refresh_token_key";
const String userID = "user_id_key";
const String platformProperties = "platform_properties_key";
const String webApiKey = "web_api_key";
const String platformLocaleKey = "platform_locale_key";


abstract class AuthenticationFragments {

  Future<AuthModel> getAccessToken();
  Future<Either<Errors, AuthModel>?> setAccessToken(AuthModel modelToCache);
  
  Future<AuthModel> getRefreshToken();
  Future<Either<Errors, AuthModel>?> setRefreshToken(AuthModel modelToCache);

  Future<AuthModel> getUserID();
  Future<Either<Errors, AuthModel>?> setUserID(AuthModel modelToCache);
  
  Future<AuthModel> getPlatformProperties();
  Future<Either<Errors, AuthModel>?> setPlatformProperties(AuthModel modelToCache);
  
  Future<AuthModel> getWebApiKey();
  Future<Either<Errors, AuthModel>?> setWebApiKey(AuthModel modelToCache);
    
}

class AuthenticationFragmentsImpl implements AuthenticationFragments {

  final Future<SharedPreferences> sharedPreferences;

  AuthenticationFragmentsImpl(this.sharedPreferences);
    
  @override
  Future<AuthModel> getAccessToken() async {

    final access_token = await sharedPreferences.then((value) => value.getString(accessToken));

    if (access_token != null) {
      return AuthModel(accessToken: access_token);
    
    } else {
      throw CacheException();
    
    }
  }

  @override
  Future<AuthModel> getPlatformProperties() async {

   final _platformToken = await sharedPreferences.then((value) => value.getString(platformProperties));

   if (_platformToken != null) {
      return AuthModel(platformProperties: _platformToken);
    
    } else {
      throw CacheException();
    
    }    
  }

  @override
  Future<AuthModel> getUserID() async {

   final _userIDToken = await sharedPreferences.then((value) => value.getString(userID));

   if (_userIDToken != null) {
      return AuthModel(userID: _userIDToken);
    
    } else {
      throw CacheException();
    
    } 
  }

  @override
  Future<AuthModel> getRefreshToken() async {
   
   final _refreshToken = await sharedPreferences.then((value) => value.getString(refreshToken));

   if (_refreshToken != null) {
      // return Future.value(AuthModel(refreshToken: _refreshToken));
      return AuthModel(refreshToken: _refreshToken);
    
    } else {
      throw CacheException();
    
    } 
  }

  @override
  Future<AuthModel> getWebApiKey() async {

   final _webApiKey = await sharedPreferences.then((value) => value.getString(webApiKey));

   if (_webApiKey != null) {
      return AuthModel(webApiKey: _webApiKey);
    
    } else {
      throw CacheException();
    
    } 
  }



  @override
  Future<Either<Errors, AuthModel>?> setAccessToken(AuthModel modelToCache) async {

    try {
      sharedPreferences.then((value) => value.setString(accessToken, modelToCache.accessToken!));
    
    } on CacheException {
      throw CacheException();
    
    }
    return null;
  }

  @override
  Future<Either<Errors, AuthModel>?> setPlatformProperties(AuthModel modelToCache) async {

    try {
      sharedPreferences.then((value) => value.setString(platformProperties, modelToCache.platformProperties!));
    
    } on CacheException {
      throw CacheException();
    
    }
    return null;  
  }

  @override
  Future<Either<Errors, AuthModel>?> setUserID(AuthModel modelToCache) async {

    try {
      sharedPreferences.then((value) => value.setString(userID, modelToCache.userID!));
    
    } on CacheException {
      throw CacheException();
    
    }
    return null;
  }

  @override
  Future<Either<Errors, AuthModel>?> setRefreshToken(AuthModel modelToCache) async {

    try {
      sharedPreferences.then((value) => value.setString(refreshToken, modelToCache.refreshToken!));

    
    } on CacheException {
      throw CacheException();
    
    }
    return null;
  }
  
  @override
  Future<Either<Errors, AuthModel>?> setWebApiKey(AuthModel modelToCache) async {

    try {
      sharedPreferences.then((value) => value.setString(webApiKey, modelToCache.webApiKey!));
    
    } on CacheException {
      throw CacheException();
    
    }
    return null;
  }
 
}