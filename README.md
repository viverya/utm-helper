# UTM Helper
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![pub package](https://img.shields.io/pub/v/utm_helper.svg)](https://pub.dev/packages/utm_helper)

Package for parsing and generating UTM parameters.

## Features

Parse UTM parameters from Query String

## Usage

Use UtmData.fromQueryString to parse UTM parameters from Query String

```dart
import 'package:utm_helper/utm_helper.dart';

main() {
  final utmData = UtmData.fromQueryString('?utm_source=google&utm_medium=cpc&utm_campaign=summer&utm_term=beach%20holidays&utm_content=ad1');
  print(utmData.toString());
}
```
