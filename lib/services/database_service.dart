// file: lib/services/database_service.dart
// author: Dainis W. Michel https://github.com/dainiswmichel
// Description: This file initializes the Supabase client and PostgreSQL connection for the application. It demonstrates the use of environment variables for sensitive information and the initialization of database connections.

import 'package:supabase/supabase.dart';
import 'package:postgres/postgres.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  late final SupabaseClient supabaseClient;
  late final PostgreSQLConnection postgresConnection;

  factory DatabaseService() {
    return _instance;
  }

  DatabaseService._internal() {
    supabaseClient = SupabaseClient(
        'https://rputallfwlwkugxmqryj.supabase.co', 'public-anon-key');

    postgresConnection = PostgreSQLConnection(
      'aws-0-eu-central-1.pooler.supabase.com',
      5432,
      'postgres',
      username: 'postgres.rputallfwlwkugxmqryj',
      password: 'YOUR-PASSWORD',
    );
    postgresConnection.open();
  }
}
