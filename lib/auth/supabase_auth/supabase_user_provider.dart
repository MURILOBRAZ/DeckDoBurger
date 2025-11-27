import 'package:supabase_flutter/supabase_flutter.dart';

import '../base_auth_user_provider.dart';

export '../base_auth_user_provider.dart';

class P1MuriloEHenriqueSupabaseUser extends BaseAuthUser {
  P1MuriloEHenriqueSupabaseUser(this.user);
  User? user;

  @override
  bool get loggedIn => user != null;

  @override
  AuthUserInfo get authUserInfo => AuthUserInfo(
        uid: user?.id,
        email: user?.email,
        displayName: user?.userMetadata?['display_name'] as String?,
        photoUrl: user?.userMetadata?['avatar_url'] as String?,
        phoneNumber: user?.phone,
      );

  @override
  Future? delete() {
    // Deleting a user requires service role; not available client-side.
    throw UnimplementedError('deleteUser requires service role in Supabase.');
  }

  @override
  Future? updateEmail(String email) =>
      Supabase.instance.client.auth.updateUser(UserAttributes(email: email));

  @override
  Future? updatePassword(String newPassword) => Supabase.instance.client.auth
      .updateUser(UserAttributes(password: newPassword));

  @override
  Future? sendEmailVerification() => Supabase.instance.client.auth.resend(
        type: OtpType.signup,
        email: user?.email,
      );

  @override
  bool get emailVerified => user?.emailConfirmedAt != null;

  @override
  Future refreshUser() async {
    final session = Supabase.instance.client.auth.currentSession;
    if (session == null) return;
    final response = await Supabase.instance.client.auth.refreshSession();
    user = response.user ?? session.user;
    currentUser = P1MuriloEHenriqueSupabaseUser(user);
  }

  static BaseAuthUser? fromSupabaseUser(User? user) {
    currentUser = P1MuriloEHenriqueSupabaseUser(user);
    return currentUser;
  }
}

Stream<BaseAuthUser?> p1MuriloEHenriqueSupabaseUserStream() =>
    Supabase.instance.client.auth.onAuthStateChange.map((event) {
      final supabaseUser = event.session?.user;
      return P1MuriloEHenriqueSupabaseUser.fromSupabaseUser(supabaseUser);
    });
