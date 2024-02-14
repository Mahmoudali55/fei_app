//This extension is for converting country code to country flag image.

extension ConvertFlag on String {
  String get toFlag {
    return (this).toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  }
}
// how to use it
// Text('US'.toFlag,style: const TextStyle(fontSize: 30), ),

extension StringFormating on String {
  String getForamttedLength({int maxLength = 20}) {
    return length > maxLength ? '${substring(0, maxLength)} ...' : this;
  }
}
