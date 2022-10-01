
class FieldValidator {
/**
 * This Method will validate your content from PAN Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with PAN number format.
 */
  bool panValidate({required String content}) {
    // First of all it will check length of the Content.
    if (content.length != 10) {
      return false;
    } else {
      // Here Comparing Content from PAN Format.
      return RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}").hasMatch(content);
    }
  }

/**
 * This Method will validate your content from Mobile Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with Mobile number format.
 */
  bool mobileValidate({required String content}) {
    // First of all it will check length of the Content.
    if (content.length != 10) {
      return false;
    } else {
      // Here Comparing Content from Mobiel Number Format.
      return RegExp(r"^[6-9]{1}[0-9]{9}").hasMatch(content);
    }
  }

/**
 * This Method will validate your content from email Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with Email format.
 */
  bool emailValidate({required String content}) {
    // First of all it will check length of the Content.
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(content);
  }

/**
 * This Method will validate your content from Aadhaar Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with Aadhaar Number format.
 */
  bool aadhaarValidate({required String content}) {
    if (content.length == 12) {
      return true;
    } else {
      return false;
    }
  }

/**
 * This Method will validate your content from URN Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with URN Number format.
 */
  bool urnNumberValidate({required String content}) {
    if (content.length != 19) {
      return false;
    } else {
      return RegExp(r"(UDYAM)[-][A-Z]{2}[-][0-9]{2}[-][0-9]{7}")
          .hasMatch(content);
    }
  }

/**
 * This Method will validate your content from LLPIN Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with LLPIN Number format.
 */
  bool llpinValidate({required String content}) {
    if (content.length != 8) {
      return false;
    } else {
      return RegExp(r"^[A-Z]{3}[-]{1}[0-9]{4}").hasMatch(content);
    }
  }

/**
 * This Method will validate your content from Account Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with Account Number format.
 */
  bool accountNumberValidate({required String content}) {
    if (content.length != 8) {
      return false;
    } else {
      return RegExp(r"^[0-9]{9,18}").hasMatch(content);
    }
  }



/**
 * This Method will validate your content from Account Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with Account Number format.
 */
  bool ifscCodeValidate({required String content}) {
    if (content.length != 11) {
      return false;
    } else {
      return RegExp(r"^[A-Z]{4}[0]{1}[0-9A-Z}[6]").hasMatch(content);
    }
  }


/**
 * This Method will validate your content from Pin Code Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with Pic Code format.
 */
  bool pinCodeValidate({required String content}) {
    if (content.length != 6) {
      return false;
    } else {
      return RegExp(r"^[0-9][6]").hasMatch(content);
    }
  }


/**
 * This Method will validate your content from ATM/Credit Card Number Format.
 * [content] Content is a Required parameter. Pass your inputed or that value which you want to compare with ATM/Credit Card Number Format.
 * [length] Length of card number.
 */
  bool cardNumberValidate({required String content, int? length}) {
    if (content.length != length) {
      return false;
    } else {
      return RegExp(r"^[0-9][16]").hasMatch(content);
    }
  }





}
