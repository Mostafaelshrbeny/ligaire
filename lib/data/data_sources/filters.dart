class Filters {
  static List<int> selectedFilters = [];

  static selectNewFilter(int id) {
    if (selectedFilters.contains(id)) {
      selectedFilters.removeWhere((element) => element == id);
    } else {
      selectedFilters.add(id);
    }
  }

  static getselectedFilters() {
    return selectedFilters;
  }

  static filterNumbers() {
    return selectedFilters.length;
  }
}
