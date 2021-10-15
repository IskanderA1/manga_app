
class MetricService {
  static Future<void> init() async {
    // try {
    //   await AppmetricaSdk().activate(
    //     apiKey: 'ae9ffa7c-1096-4d74-96e8-39c900022f3c',
    //     sessionTimeout: 60,
    //   );
    // } on Exception catch (e) {
    //   print(e);
    // }
  }

  static Future<void> sendEvent(
    String name, {
    Map<String, dynamic>? attributes,
  }) async {
    try {
      //await AppmetricaSdk().reportEvent(name: name, attributes: attributes);
    } on Exception catch (e) {
      print(e);
    }
  }

  static Future<void> sendUserAuthEvent({
    //required UserModel user,
    required String login,
    required String password,
    required bool isLocalAuth,
  }) async {
    // try {
    //   await AppmetricaSdk().setUserProfileID(userProfileID: user.studId);
    //   await AppmetricaSdk().reportUserProfileUserName(userName: user.studFio);
    //   await AppmetricaSdk().reportUserProfileCustomString(
    //     key: 'token',
    //     value: user.token,
    //   );
    //   await AppmetricaSdk().reportUserProfileCustomString(
    //     key: 'login',
    //     value: login,
    //   );
    //   await AppmetricaSdk().reportUserProfileCustomString(
    //     key: 'password',
    //     value: password,
    //   );
    //   await AppmetricaSdk().reportUserProfileCustomBoolean(
    //     key: 'isLocalAuth',
    //     value: isLocalAuth,
    //   );
    //   await AppmetricaSdk().reportUserProfileCustomString(
    //     key: 'group',
    //     value: user.groupNum,
    //   );
    // } on Exception catch (e) {
    //   print(e);
    // }
  }
}
