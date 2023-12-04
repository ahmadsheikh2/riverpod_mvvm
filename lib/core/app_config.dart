enum Environment {
  development,
  staging,
  production,
}

class AppConfig {
  final Environment environment;

  AppConfig(this.environment);
}
