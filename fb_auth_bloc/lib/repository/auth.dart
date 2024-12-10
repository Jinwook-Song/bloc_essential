import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:fb_auth_bloc/model/model.dart';

abstract interface class AuthRepository {
  Stream<fbAuth.User?> get user;

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<void> signin({
    required String email,
    required String password,
  });

  Future<void> signout();
}

class AuthRepositoryImpl implements AuthRepository {
  final fbAuth.FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  Stream<fbAuth.User?> get user => _firebaseAuth.userChanges();

  @override
  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final fbAuth.UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final currentUser = userCredential.user!;
      final User user = User(
        id: currentUser.uid,
        name: name,
        email: currentUser.email!,
        profileImage: 'https://avatars.githubusercontent.com/u/78011042?v=4',
        point: 0,
        rank: 'bronze',
      );
      await userRef.doc(currentUser.uid).set(user.toJson());
    } on fbAuth.FirebaseException catch (e) {
      throw CustomError(
        code: e.code,
        message: e.message!,
        plugin: e.plugin,
      );
    } catch (e) {
      throw CustomError(
        code: 'Exception',
        message: e.toString(),
        plugin: 'flutter_error/server_error',
      );
    }
  }

  @override
  Future<void> signin({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on fbAuth.FirebaseException catch (e) {
      throw CustomError(
        code: e.code,
        message: e.message!,
        plugin: e.plugin,
      );
    } catch (e) {
      throw CustomError(
        code: 'Exception',
        message: e.toString(),
        plugin: 'flutter_error/server_error',
      );
    }
  }

  @override
  Future<void> signout() async {
    await _firebaseAuth.signOut();
  }
}
