import 'package:fei_app/helper/utils/app_settings.dart';

// import 'arabic_to_english_number.dart';

enum TextFieldValidatorType {
  Email,
  Password,
  ConfirmPassword,
  PhoneNumber,
  NormalText,
  Code,
  Number,
  Name,
  Optional,
  FirstVisit,
  IdNumber,
  Required,
  HaveNotSenstiveWords
}

validation(
    {required TextFieldValidatorType type,
    required String value,
    required String firstPasswordForConfirm}) {
  if (type == TextFieldValidatorType.PhoneNumber) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : 'required';
    }
    return null;
  } else if (type == TextFieldValidatorType.Email) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : '*required';
    } else if (value.isNotEmpty && !regExpEmail.hasMatch(value)) {
      return isArabic ? 'البريد الإلكتروني غير صحيح' : 'invalid email';
    } else {
      return null;
    }
  } else if (type == TextFieldValidatorType.Password) {
    if (value.isEmpty) {
      return isArabic ? 'كلمة المرور مطلوبة' : 'password is required';
    } else if (value.length < 6) {
      return isArabic
          ? 'كلمة المرور يجب ان تكون اكبر من 6 حروف'
          : 'password must be greater than 6 digits';
    } else if (value.length > 30) {
      return isArabic
          ? 'كلمة المرور يجب ان تكون أقل من 30 حرف'
          : 'password must be less than 30 digits';
    } else {
      return null;
    }
  } else if (type == TextFieldValidatorType.ConfirmPassword) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : '*required';
    } else if (value != firstPasswordForConfirm) {
      return isArabic ? 'غير مطابق' : 'dismatch';
    } else {
      return null;
    }
  } else if (type == TextFieldValidatorType.Code) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : '*required';
    } else if (value.length != 6) {
      return isArabic ? 'الكود لا بد ان يكون 6 ارقام' : '*must be 6';
    }
  } else if (type == TextFieldValidatorType.Optional) {
    return null;
  } else if (type == TextFieldValidatorType.Number) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : '*required';
    }
    if (value.length != 10) {
      return isArabic
          ? 'رقم الهوية يجب أن يكون عشرة أرقام فقط'
          : 'ID must be 10 numbers';
    }
    if (!regExpNumber.hasMatch(value.trim().replaceAll('‎', ''))) {
      print(value.toString());
      return isArabic
          ? 'لا يجب ان يحتوي على حروف خاصة'
          : 'don’t enter special chars';
    }
  } else if (type == TextFieldValidatorType.Name) {
    if (value.isEmpty) {
      return isArabic ? ' مطلوب' : '*required';
    }
    if (!regExpName.hasMatch(value.trim().replaceAll('‎', ''))) {
      print(value.toString());
      return 'حروف فقط';
    }
  } else if (type == TextFieldValidatorType.FirstVisit) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : '*required';
    }
  } else if (type == TextFieldValidatorType.IdNumber) {
    if (value.isEmpty) {
      return isArabic ? 'هذا الحقل مطلوب' : '*required';
    } else if (value.length != 10) {
      return isArabic ? 'يجب ان يكون 10 ارقام' : 'must be 10 numbers';
    } else if (type == TextFieldValidatorType.HaveNotSenstiveWords) {
      if (value.isEmpty) {
        return 'مطلوب';
      } else if (!regExpNumberAndLettersOnly
          .hasMatch(value.trim().replaceAll('‎', ''))) {
        return 'حروف وأرقام فقط';
      }
    } else if (type == TextFieldValidatorType.Required) {
      if (value.trim().isEmpty) {
        return isArabic ? 'هذا الحقل مطلوب' : '*required';
      }
    } else {
      return null;
    }
  }
}
