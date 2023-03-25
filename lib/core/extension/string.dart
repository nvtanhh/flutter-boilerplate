extension StringExtensions on String {
  String plus(String other) {
    return this + other;
  }

  bool equalsIgnoreCase(String secondString) => toLowerCase().contains(secondString.toLowerCase());

  bool containsIgnoreCase(String secondString) => toLowerCase().contains(secondString.toLowerCase());

  bool startsWithIgnoreCase(String secondString) => toLowerCase().startsWith(secondString.toLowerCase());

  bool endsWithIgnoreCase(String secondString) => toLowerCase().endsWith(secondString.toLowerCase());

  String capitalize() {
    if (length <= 1) {
      return this.toUpperCase();
    }

    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  String toLowerCase() => this.toLowerCase();

  String toUpperCase() => this.toUpperCase();
}
