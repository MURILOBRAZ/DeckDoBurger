import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../base_auth_user_provider.dart';
import 'supabase_auth_manager.dart';
import 'supabase_user_provider.dart';

export 'supabase_auth_manager.dart';
export 'supabase_user_provider.dart';

final _supabaseAuthManager = SupabaseAuthManager();
SupabaseAuthManager get authManager => _supabaseAuthManager;

String get currentUserEmail => currentUser?.email ?? '';
String get currentUserUid => currentUser?.uid ?? '';
String get currentUserDisplayName => currentUser?.displayName ?? '';
String get currentUserPhoto => currentUser?.photoUrl ?? '';
String get currentPhoneNumber => currentUser?.phoneNumber ?? '';
String get currentJwtToken =>
    Supabase.instance.client.auth.currentSession?.accessToken ?? '';
bool get currentUserEmailVerified => currentUser?.emailVerified ?? false;

final supabaseAuthStream =
    Supabase.instance.client.auth.onAuthStateChange.map<BaseAuthUser?>(
  (event) {
    final user = event.session?.user;
    return P1MuriloEHenriqueSupabaseUser.fromSupabaseUser(user);
  },
).asBroadcastStream();

class AuthUserStreamWidget extends StatelessWidget {
  const AuthUserStreamWidget({Key? key, required this.builder})
      : super(key: key);

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => StreamBuilder(
        stream: supabaseAuthStream,
        builder: (context, _) => builder(context),
      );
}
