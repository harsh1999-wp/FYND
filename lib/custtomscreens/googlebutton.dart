// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:gofoods/auth%20Respository/auth%20provider.dart';
// import 'package:gofoods/auth%20Respository/auth_Controller.dart';
// import 'package:gofoods/screens/authscreen/phonenumber.dart';
// import 'package:gofoods/utils/mediaqury.dart';
// import '../utils/enstring.dart';
//
// class SignInButton extends ConsumerWidget {
//   final bool isFromLogin;
//   const SignInButton({Key? key, this.isFromLogin = true}) : super(key: key);
//
//   void signInWithGoogle(WidgetRef ref) {
//     ref.read(authControllerProvider).signInWithGoogle();
//   }
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//    return Row(
//      children: [
//     GestureDetector(
//       onTap: ()=>signInWithGoogle(ef),
//       child: Container(
//    height: height / 15,
//        width: width / 1.15,
//        decoration: BoxDecoration(
//          color: Colors.white,
//          borderRadius: const BorderRadius.all(
//            Radius.circular(12),
//          ),
//        ),
//        child: Row(
//          children: [
//            SizedBox(width: width / 20),
//            Icon(Icons.g_mobiledata, color: Colors.white),
//            SizedBox(width: width / 20),
//            Text(
//              'Sign with google',
//              style: TextStyle(
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold,
//                  fontSize: height / 55),
//            )
//          ],
//        ),
//    ),
//     ),
//      ],
//    );
//   }
// }