import 'dart:async';

import 'package:bibaho_sheba/utils/errors/show_error_message.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instanse => Get.find();

  final _connectionType = ConnectivityResult.none.obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;

  ConnectivityResult get connectionType => _connectionType.value;

  // final Connectivity _connectivity = Connectivity();
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription = StreamSubscription;
  // final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;
  set connectionType(value) {
    _connectionType.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    getConnectivityType();
    _streamSubscription = _connectivity.onConnectivityChanged
        .listen(_updateState as void Function(List<ConnectivityResult> event)?);
  }

  Future<void> getConnectivityType() async {
    late ConnectivityResult connectivityResult;
    try {
      connectivityResult =
          (await (_connectivity.checkConnectivity())) as ConnectivityResult;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return _updateState(connectivityResult);
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        showSnackBar(
            context: Get.context!,
            title: "No Internet Connection",
            message: '');
        return false;
      } else {
        print('net connection ok');
        return true;
      }
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  _updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = MConnectivityResult.wifi;
        break;
      case ConnectivityResult.mobile:
        connectionType = MConnectivityResult.mobile;
        break;
      case ConnectivityResult.none:
        connectionType = MConnectivityResult.none;
        break;
      default:
        print('Failed to get connection type');
        break;
    }
  }

  @override
  void onClose() {
    _streamSubscription.cancel();
  }
}

enum MConnectivityResult { none, wifi, mobile }
