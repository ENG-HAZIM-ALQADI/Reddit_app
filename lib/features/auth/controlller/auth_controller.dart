import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:reddit_tutorial/core/utils.dart';
import 'package:reddit_tutorial/features/auth/repository/auth_repository.dart';

import '../../../core/providers/firebase_providers.dart';
// import 'package:reddit_tutorial/models/user_model.dart';
final authControllerProvider = Provider((ref) =>AuthController(authRepository: ref.read(authRepositoryProvider),),);
// final authControllerProvider = Provider((ref) => AuthRepository(firestore: ref.read(firestoreProvider), auth:ref.read(authProvider), googleSignIn: ref.read(googleSignInProvider)),);
// final userProvider = StateProvider<UserModel?>((ref) => null);

// final authControllerProvider = StateNotifierProvider<AuthController, bool>(
//   (ref) => AuthController(
//     authRepository: ref.watch(authRepositoryProvider),
//     ref: ref,
//   ),
// );

// final authStateChangeProvider = StreamProvider((ref) {
//   final authController = ref.watch(authControllerProvider.notifier);
//   return authController.authStateChange;
// });
//
// final getUserDataProvider = StreamProvider.family((ref, String uid) {
//   final authController = ref.watch(authControllerProvider.notifier);
//   return authController.getUserData(uid);
// });

class AuthController{
  final AuthRepository _authRepository;
  // final Ref _ref;
  AuthController({required AuthRepository authRepository}): _authRepository = authRepository;
        // _ref = ref,
        // super(false); // loading

  // Stream<User?> get authStateChange => _authRepository.authStateChange;

  void signInWithGoogle(){
    _authRepository.signInWithGoogle();
    // state = true;
    // final user = await _authRepository.signInWithGoogle(isFromLogin);
    // state = false;
    // user.fold(
    //   (l) => showSnackBar(context, l.message),
    //   (userModel) => _ref.read(userProvider.notifier).update((state) => userModel),
    // );
  }

  // void signInAsGuest(BuildContext context) async {
  //   state = true;
  //   final user = await _authRepository.signInAsGuest();
  //   state = false;
  //   user.fold(
  //     (l) => showSnackBar(context, l.message),
  //     (userModel) => _ref.read(userProvider.notifier).update((state) => userModel),
  //   );
  // }

  // Stream<UserModel> getUserData(String uid) {
  //   return _authRepository.getUserData(uid);
  // }

  // void logout() async {
  //   _authRepository.logOut();
  // }
}
