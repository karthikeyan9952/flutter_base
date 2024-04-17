/// ## SizeUnit
/// The universal sizes used across the app
/// * `sm`  8pt.
/// * `md`  12pt.
/// * `lg`  16pt.
/// * `xlg` 24pt.
///
/// * `borderRadius` 8pt.
///
/// Usage
///
/// ```dart
/// Padding(
///   padding: const EdgeInsets.all(SizeUnit.lg),
/// )
/// ```
class SizeUnit {
  static const double borderRadius = 8.0;

  /// The default unit of spacing
  static const double _spaceUnit = 16;

  /// sm spacing value (8pt)
  static const double sm = 0.5 * _spaceUnit;

  /// md spacing value (12pt)
  static const double md = 0.75 * _spaceUnit;

  /// lg spacing value (16pt)
  static const double lg = _spaceUnit;

  /// xlg spacing value (24pt)
  static const double xlg = 1.5 * _spaceUnit;
}
