// Future & ASYNC/AWAIT

Future<String> delivery() async {
  print("Delivery Will be Done Soon");

  await Future.delayed(Duration(seconds: 2));

  return "Delivery done";
}

// Try, Catch, Finally

String personName = "Mahesh";

Future<void> deliveryCheck() async {
  try {
    print("Delivery Process Started");

    await Future.delayed(Duration(seconds: 2));

    if (personName != "Mahesh") {
      print("Wrong Person");
    } else {
      print("Delivery Will be Done Soon");

      await Future.delayed(Duration(seconds: 2));

      print("Delivery Done Successfully");
    }
  } catch (error) {
    print("Something went wrong: $error");
  } finally {
    print("Delivery Process Finished");
  }
}

// Stream and async*

Stream<int> runBanaye() async* {
  for (int i = 1; i <= 6; i++) {
    await Future.delayed(Duration(seconds: 2));

    yield i;
  }
}

// Main Function

void main() async {
  // Future & async/await
  print("----- Future & Async/Await -----");

  String dTime = await delivery();

  print(dTime);

  print("");

  // Try, Catch, Finally
  print("----- Try, Catch, Finally -----");

  await deliveryCheck();

  print("");

  // Stream & async*
  print("----- Stream & Async* -----");

  await for (int number in runBanaye()) {
    print("Stream Value: $number");
  }

  print("");

  print("Program Finished");
}
