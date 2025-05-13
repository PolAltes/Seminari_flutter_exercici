import 'package:go_router/go_router.dart';
import 'package:seminari_flutter/screens/auth/login_screen.dart';
import 'package:seminari_flutter/screens/borrar_screen.dart';
import 'package:seminari_flutter/screens/details_screen.dart';
import 'package:seminari_flutter/screens/editar_screen.dart';
import 'package:seminari_flutter/screens/imprimir_screen.dart';
import 'package:seminari_flutter/screens/home_screen.dart';
import 'package:seminari_flutter/screens/perfil_screen.dart';
import 'package:seminari_flutter/services/auth_service.dart';
import 'package:seminari_flutter/screens/edit_perfil_screen.dart';
import 'package:seminari_flutter/screens/canviar_contrassenya_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AuthService().isLoggedIn ? '/' : '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'details',
          builder: (context, state) => const DetailsScreen(),
          routes: [
            GoRoute(
              path: 'imprimir',
              builder: (context, state) => const ImprimirScreen(),
            ),
          ],
        ),
        GoRoute(
          path: 'editar',
          builder: (context, state) => const EditarScreen(),
        ),
        GoRoute(
          path: 'borrar',
          builder: (context, state) => const BorrarScreen(),
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) => const PerfilScreen(),
        ),
        GoRoute(
          path: 'edit-profile',
          builder: (context, state) => const EditProfileScreen(),
        ),
        GoRoute(
          path: 'canviar-contrasenya',
          builder: (context, state) => const ChangePasswordScreen(),
        ),
      ],
    ),
  ],
);
