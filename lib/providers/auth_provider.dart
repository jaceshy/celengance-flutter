import 'package:flutter/foundation.dart';
import '../models/user_model.dart';

enum AuthStatus { unauthenticated, loading, authenticated, error }

class AuthProvider extends ChangeNotifier {
  AuthStatus _status = AuthStatus.unauthenticated;
  UserModel? _currentUser;
  String _errorMessage = '';

  AuthStatus get status => _status;
  UserModel? get currentUser => _currentUser;
  String get errorMessage => _errorMessage;
  bool get isLoggedIn => _status == AuthStatus.authenticated;
  bool get isLoading => _status == AuthStatus.loading;

  Future<bool> signIn(String email, String password) async {
    _status = AuthStatus.loading;
    _errorMessage = '';
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 1200));

    if (email.isEmpty || password.isEmpty) {
      _status = AuthStatus.error;
      _errorMessage = 'Email dan password tidak boleh kosong.';
      notifyListeners();
      return false;
    }

    final namePart = email.split('@').first;
    final capitalized = namePart.isNotEmpty
        ? namePart[0].toUpperCase() + namePart.substring(1)
        : namePart;

    _currentUser = UserModel(
      id: '1',
      firstName: capitalized,
      lastName: '',
      email: email,
    );
    _status = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }

  Future<bool> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    _status = AuthStatus.loading;
    _errorMessage = '';
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 1200));

    if (firstName.isEmpty || email.isEmpty || password.isEmpty) {
      _status = AuthStatus.error;
      _errorMessage = 'Semua field harus diisi.';
      notifyListeners();
      return false;
    }

    _currentUser = UserModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      firstName: firstName.trim(),
      lastName: lastName.trim(),
      email: email.trim(),
    );
    _status = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }

  void signOut() {
    _currentUser = null;
    _status = AuthStatus.unauthenticated;
    _errorMessage = '';
    notifyListeners();
  }
}