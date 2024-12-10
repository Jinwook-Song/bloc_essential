class RouteModel {
  final String path;
  final String name;

  const RouteModel({
    required this.path,
    required this.name,
  });
}

class Routes {
  static const RouteModel splash = RouteModel(
    path: '/splash',
    name: 'Splash',
  );
  static const RouteModel home = RouteModel(
    path: '/',
    name: 'Home',
  );
  static const RouteModel signin = RouteModel(
    path: '/signin',
    name: 'Signin',
  );
  static const RouteModel signup = RouteModel(
    path: '/signup',
    name: 'Signup',
  );
  static const RouteModel profile = RouteModel(
    path: '/profile',
    name: 'Profile',
  );
}
