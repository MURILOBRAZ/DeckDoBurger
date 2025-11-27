import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../auth_manager.dart';
import '../base_auth_user_provider.dart';
import 'supabase_user_provider.dart';

class SupabaseAuthManager extends AuthManager
    with
        EmailSignInManager,
        GoogleSignInManager,
        AppleSignInManager,
        AnonymousSignInManager,
        JwtSignInManager,
        GithubSignInManager,
        PhoneSignInManager {
  SupabaseClient get _client => Supabase.instance.client;

  @override
  Future signOut() => _client.auth.signOut();

  @override
  Future deleteUser(BuildContext context) {
    // Requires service role on server side; not exposed to client.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('deleteUser needs service role on Supabase (not client).'),
      ),
    );
    return Future.value();
  }

  @override
  Future updateEmail({
    required String email,
    required BuildContext context,
  }) =>
      _client.auth.updateUser(UserAttributes(email: email));

  Future updatePassword({
    required String newPassword,
    required BuildContext context,
  }) =>
      _client.auth.updateUser(UserAttributes(password: newPassword));

  @override
  Future resetPassword({
    required String email,
    required BuildContext context,
  }) =>
      _client.auth.resetPasswordForEmail(email);

  @override
  Future sendEmailVerification() async =>
      _client.auth.resend(
        type: OtpType.signup,
        email: currentUser?.email,
      );

  @override
  Future refreshUser() async => _client.auth.refreshSession();

  @override
  Future<BaseAuthUser?> signInWithEmail(
    BuildContext context,
    String email,
    String password,
  ) async {
    final response =
        await _client.auth.signInWithPassword(email: email, password: password);
    return P1MuriloEHenriqueSupabaseUser.fromSupabaseUser(
      response.session?.user,
    );
  }

  @override
  Future<BaseAuthUser?> createAccountWithEmail(
    BuildContext context,
    String email,
    String password,
  ) async {
    final response = await _client.auth.signUp(
      email: email,
      password: password,
      emailRedirectTo: null,
    );
    return P1MuriloEHenriqueSupabaseUser.fromSupabaseUser(
      response.user,
    );
  }

  @override
  Future<BaseAuthUser?> signInWithJwtToken(
    BuildContext context,
    String jwtToken,
  ) async {
    final response = await _client.auth.setSession(jwtToken);
    return P1MuriloEHenriqueSupabaseUser.fromSupabaseUser(response.user);
  }

  // The following providers depend on OAuth setup in Supabase; stubbed for now.
  @override
  Future<BaseAuthUser?> signInWithGoogle(BuildContext context) {
    throw UnimplementedError('Configure Google OAuth in Supabase first.');
  }

  @override
  Future<BaseAuthUser?> signInWithApple(BuildContext context) {
    throw UnimplementedError('Configure Apple OAuth in Supabase first.');
  }

  @override
  Future<BaseAuthUser?> signInAnonymously(BuildContext context) {
    throw UnimplementedError('Anonymous auth not available in Supabase.');
  }

  @override
  Future<BaseAuthUser?> signInWithGithub(BuildContext context) {
    throw UnimplementedError('Configure GitHub OAuth in Supabase first.');
  }

  @override
  Future beginPhoneAuth({
    required BuildContext context,
    required String phoneNumber,
    required void Function(BuildContext) onCodeSent,
  }) {
    throw UnimplementedError('Phone auth not available in Supabase client.');
  }

  @override
  Future verifySmsCode({
    required BuildContext context,
    required String smsCode,
  }) {
    throw UnimplementedError('Phone auth not available in Supabase client.');
  }
}
