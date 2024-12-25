# Insufficient JSON Decoding Error Handling in Dart

This repository demonstrates a common error in Dart applications involving insufficient error handling during JSON decoding. The provided code only handles network errors, not exceptions that occur when decoding malformed JSON.

## Problem

The `fetchData` function uses `jsonDecode` to parse JSON data. While a `try-catch` block is used, it only catches general `Exception` objects.  This means that JSON decoding exceptions, like `FormatException`, are not explicitly handled leading to silent failures and potential crashes.

## Solution

The solution enhances error handling to specifically catch `FormatException` during JSON decoding, providing informative error messages to the user.

## How to Run

1. Clone this repository.
2. Run `dart bug.dart` to see the original buggy behavior. 
3. Run `dart bugSolution.dart` to see the corrected behavior with proper error handling.
