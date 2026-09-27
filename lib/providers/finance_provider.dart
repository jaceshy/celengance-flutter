import 'package:flutter/foundation.dart';
import '../models/finance_model.dart';

class FinanceProvider extends ChangeNotifier {
  bool _isBalanceVisible = true;

  final FinanceData _financeData = const FinanceData(
    balance: 4200000,
    healthScore: 82,
    healthLabel: 'Excellent',
    healthChangePercent: 5.0,
    aiRecommendationTitle: 'Your spending on food increased 12% this month',
    aiRecommendationBody:
        'Try reducing dining expenses to reach your goals faster',
    stats: [
      StatItem(
        label: 'Monthly Income',
        amount: 12500000,
        changePercent: 8,
        isPositive: true,
        isIncome: true,
      ),
      StatItem(
        label: 'Monthly Expenses',
        amount: 8300000,
        changePercent: 8,
        isPositive: false,
        isIncome: false,
      ),
      StatItem(
        label: 'Monthly Savings',
        amount: 4200000,
        changePercent: 20,
        isPositive: true,
        isIncome: true,
      ),
      StatItem(
        label: 'Investments',
        amount: 6100000,
        changePercent: 15,
        isPositive: true,
        isIncome: true,
      ),
    ],
    goalCurrent: 120000000,
    goalTarget: 200000000,
    goalDeadline: 'Dec 2028',
    goalTimeLeft: '1y 3m left',
  );

  bool get isBalanceVisible => _isBalanceVisible;
  FinanceData get financeData => _financeData;

  void toggleBalanceVisibility() {
    _isBalanceVisible = !_isBalanceVisible;
    notifyListeners();
  }
}