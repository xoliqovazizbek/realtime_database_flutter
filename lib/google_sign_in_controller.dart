import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogINController extends GetxController {

  var _googleLogin = GoogleSignIn();
  var googleAccound = Rx<GoogleSignInAccount?>(null);

  login() async {
    googleAccound.value = await _googleLogin.signIn();
  }  
}