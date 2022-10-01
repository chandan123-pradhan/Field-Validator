# field_validation

This package provides an easy way to validate Your Email, PAN, Pic code, Mobile Number And All Types of Documents like Indian Government Documents like Aadhar,PAN and LLPIN..etc This is often useful to avoid the use of RegEx for validating the user inputs which maynot work in some scenarios, this package written purely in dart will validate the numbers through CheckSum values.


## Usage
[Example](https://github.com/chandan123-pradhan/Field-Validator/blob/master/example/main.dart)

To use this package:

* add the dependency to your [pubspec.yaml](https://github.com/chandan123-pradhan/Field-Validator/blob/master/pubspec.yaml) file.

```yaml
    dependencies:
      flutter:
        sdk: flutter
      field_validation: ^0.0.1
```

## Available Methods

panValidate() - For Validate PAN Number.

mobileValidate() - For Validate Mobile Number.

emailValidate() - For Validate Email.

aadhaarValidate() - For Validate Aadhaar Number.

urnNumberValidate() - For Validate Udyam Registration Number.

llpinValidate() - For Validate LLPIN Number.

accountNumberValidate() - For Validate Account Number.

ifscValidate() - For Validate IFSC Code.

pinCodeValidate() - For Validate Pin Code.

cardNumberValidate() - For Validate Card Number.




### How to use

```dart
  

import 'package:field_validation/Source_Code/FlutterValidation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Validator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
//Creating Object of the FieldValidator class.
  FlutterValidation validator = new FlutterValidation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Center(
          child: InkWell(
            onTap: () {
              //Here We are calling Email validate method and passing that value which we want to compare with email.
              bool result =
                  validator.emailValidate(content: "Chandan@gmail.com");
              print(result);
            },
            child: Text("Botton"),
          ),
        ),
      ),
    );
  }
}


```

## Done Thank You For The Using This Package. It Will Be Really Really Helpfull.