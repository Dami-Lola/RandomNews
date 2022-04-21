import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:mobx/mobx.dart';

import '../config/secure_storage.dart';

part 'auth_store.g.dart';

@jsonSerializable
class AuthStore extends _AuthStore with _$AuthStore {}

@jsonSerializable
abstract class _AuthStore with Store {

  @observable
  String? emailAddress;

  @observable
  String? password;

  @observable
  bool? showBioLogin = false;

  @observable
  bool? authenticated = false;

  @observable
  bool? isUserLoggedIn = false;

  // String routeToGo() {
  //   if(userLogIn == true) {
  //     // if (memberDetails != null && memberDetails!.id! > 0) {
  //     switch (memberDetails!.isWorker) {
  //       case true:
  //         if(memberDetails!.isPastor == true || memberDetails!.isHeadPastor == true){
  //           return PastorsHomePage.routeName;
  //         }
  //         else{
  //           return WorkerHomePage.routeName;
  //         }
  //     // return WorkerHomePage.routeName;
  //       case false:
  //         return MemberHomePage.routeName;
  //       case null:
  //         return MemberHomePage.routeName;
  //       default:
  //         return MemberHomePage.routeName;
  //     }
  //     // }
  //   }
  //   else {
  //     return SplashScreen.routeName;
  //   }
  // }

  List<ReactionDisposer>? _disposers;

  void persistAuth() {
    _disposers = [
      reaction((_) => emailAddress,
              (_) async => await Storage.storeBioLogin(JsonMapper.serialize(this))),
      reaction((_) => password,
              (_) async => await Storage.storeBioLogin(JsonMapper.serialize(this))),
      reaction((_) => showBioLogin,
              (_) async => await Storage.storeBioLogin(JsonMapper.serialize(this))),
      reaction((_) => authenticated,
              (_) async => await Storage.storeBioLogin(JsonMapper.serialize(this))),
      reaction((_) => isUserLoggedIn,
              (_) async => await Storage.storeLogin(JsonMapper.serialize(this)))
    ];
  }

  /// Call this to method to clear all listners and trackers.
  void dispose() {
    for (final d in _disposers!) {
      d();
    }
  }
}
