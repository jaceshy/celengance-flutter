class StatItem {
  final String label;
  final double amount;
  final double changePercent;
  final bool isPositive;
  final bool isIncome;

  const StatItem({
    required this.label,
    required this.amount,
    required this.changePercent,
    required this.isPositive,
    this.isIncome = false,
  });
}

class FinanceData {
  final double balance;
  final int healthScore;
  final String healthLabel;
  final double healthChangePercent;
  final String aiRecommendationTitle;
  final String aiRecommendationBody;
  final List<StatItem> stats;
  final double goalCurrent;
  final double goalTarget;
  final String goalDeadline;
  final String goalTimeLeft;

  const FinanceData({
    required this.balance,
    required this.healthScore,
    required this.healthLabel,
    required this.healthChangePercent,
    required this.aiRecommendationTitle,
    required this.aiRecommendationBody,
    required this.stats,
    required this.goalCurrent,
    required this.goalTarget,
    required this.goalDeadline,
    required this.goalTimeLeft,
  });

  double get goalProgressPercent => goalCurrent / goalTarget;
}