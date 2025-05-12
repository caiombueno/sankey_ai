enum Flavor {
  dev,
  stg,
  prod,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Sankey Ai Dev';
      case Flavor.stg:
        return 'Sankey Ai Stg';
      case Flavor.prod:
        return 'Sankey Ai';
    }
  }

}
