/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_age_verification_base.dart';

// TODO: Export any libraries intended for clients of this package.

void verifyAge(int age) {
  if (age < 0 || age > 150) {
    throw InvalidAgeException("invalid");
  }

  if (age < 18) {
    throw AgeVerificationException('uder 18');
  }
}

class AgeVerificationException implements Exception {
  AgeVerificationException(this.message);
  String message;
}

class InvalidAgeException implements Exception {
  InvalidAgeException(this.message);
  String message;
}

/*
Practice Question 2: Age Verification
Task:
Create a function named verifyAge that takes 
an integer representing a person’s age.
If the age is below a certain threshold 
(e.g., 18 years), throw a custom exception 
named AgeVerificationException.
The function should also handle cases
 where the age is clearly unrealistic 
 (e.g., negative numbers or unreasonably 
 high numbers like 150), throwing an 
 appropriate custom exception.
 */