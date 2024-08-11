class Images {

  static String get circle_bg3 => 'circle_bg3'.png;
  static String get circle_bg2 => 'circle_bg2'.png;
  static String get circle_bg => 'circle_bg'.png;
  

}

extension on String {
  String get png => 'assets/images/$this.png';
}
