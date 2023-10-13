class RawConfig {
  RawConfig.from(this._config);

  final Map<String, String> _config;

  String? operator [](String key) => _config[key];
}
