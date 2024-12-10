class RouteMoel {
  final String path;
  final String name;

  const RouteMoel({
    required this.path,
    required this.name,
  });
}

class Routes {
  static const RouteMoel splash = RouteMoel(
    path: '/splash',
    name: 'Splash',
  );
  static const RouteMoel home = RouteMoel(
    path: '/',
    name: 'Home',
  );
  static const RouteMoel signin = RouteMoel(
    path: '/signin',
    name: 'Signin',
  );
  static const RouteMoel signup = RouteMoel(
    path: '/signup',
    name: 'Signup',
  );
  static const RouteMoel profile = RouteMoel(
    path: '/profile',
    name: 'Profile',
  );
}
