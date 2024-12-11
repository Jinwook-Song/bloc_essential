import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fb_auth_bloc/constant/constant.dart';
import 'package:fb_auth_bloc/model/model.dart';

abstract interface class ProfileRepository {
  Future<User> getProfile({required String uid});
}

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl();

  @override
  Future<User> getProfile({required String uid}) async {
    try {
      final DocumentSnapshot doc = await userRef.doc(uid).get();
      if (!doc.exists) throw 'User not found';

      return User.fromJson(doc.data() as Map<String, dynamic>);
    } on FirebaseException catch (e) {
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
}
