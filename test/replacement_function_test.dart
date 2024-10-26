import 'package:flutter_test/flutter_test.dart';

String replcamenetKeysWithValueInString(String url, Map<String, String> map) {
  if (map.isEmpty && url.isEmpty) {
    return "";
  } else {
    if (map.isEmpty) {
      url = url.replaceAll("{", "");
      url = url.replaceAll("}", "");
      return url;
    }

    if (url.isEmpty) {
      return "www.google.com";
    }

    for (var i = 0; i < map.length; i++) {
      if (url.contains("{" + map.keys.elementAt(i) + "}")) {
        url = url.replaceAll(
            "{" + map.keys.elementAt(i) + "}", map.values.elementAt(i));
      }
    }
    return url;
  }
}

void main() {
  String url = "https://www.google.com/{token}/hello/{refresh}";
  Map<String, String> map = {"token": "123", "refresh": "456"};
  test("send Map and Url String for the function and return String with Values",
      () {
    String result = replcamenetKeysWithValueInString(url, map);
    expect(result, "https://www.google.com/123/hello/456");
  });

  test("Empty Map with Url", () {
    Map<String, String> emptyMap = {};
    String result = replcamenetKeysWithValueInString(url, emptyMap);
    expect(result, "https://www.google.com/token/hello/refresh");
  });

  test("Empty String Url with Map", () {
    String emptyUrl = "";

    String result = replcamenetKeysWithValueInString(emptyUrl, map);

    expect(result, "www.google.com");
  });

  test("empty String url and empty Map", () {
    String result = replcamenetKeysWithValueInString("", {});

    expect(result, '');
  });
}
