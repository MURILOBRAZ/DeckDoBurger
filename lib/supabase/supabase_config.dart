import 'package:supabase_flutter/supabase_flutter.dart';

/// Supply via --dart-define or set these constants before building.
const String supabaseUrl =
    String.fromEnvironment('SUPABASE_URL', defaultValue: 'https://tcnbkcacuytwwucsnbtp.supabase.co');
const String supabaseAnonKey =
    String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRjbmJrY2FjdXl0d3d1Y3NuYnRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQxOTAxMTQsImV4cCI6MjA3OTc2NjExNH0.onrdWtRsLhs0VHLQi94X-WwTJ-mdqM4u1IigMWAVCmY');

bool _initializedSupabase = false;

Future<void> ensureSupabaseInitialized() async {
  if (_initializedSupabase) return;
  if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
    throw StateError(
      'Configure SUPABASE_URL and SUPABASE_ANON_KEY (use --dart-define or set constants).',
    );
  }
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  _initializedSupabase = true;
}
