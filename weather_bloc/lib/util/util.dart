DateTime msToDateTimeDefaultToday(int? value) {
  return msToDateTime(value) ?? DateTime.now();
}

DateTime? msToDateTime(int? value) {
  if (value == null || value == 0) return null;
  return DateTime.fromMillisecondsSinceEpoch(value);
}
