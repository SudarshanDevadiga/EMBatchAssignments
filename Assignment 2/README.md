# Dart Future, Async/Await & Stream Assignment

This assignment demonstrates asynchronous programming concepts in Dart.

## Topics Covered

* Future
* async and await
* Try, Catch and Finally
* Stream
* async*
* yield
* await for

## Program Description

### 1. Future & Async/Await

The `delivery()` function demonstrates how a `Future` works with `async` and `await`.

It waits for 2 seconds and then returns:

```text
Delivery done
```

### 2. Try, Catch & Finally

The `deliveryCheck()` function demonstrates error handling using:

* `try`
* `catch`
* `finally`

The `finally` block executes after the delivery process regardless of whether an error occurs.

### 3. Stream & async*

The `runBanaye()` function demonstrates a Dart `Stream`.

It generates numbers from 1 to 6 with a 2-second delay between each value using:

* `async*`
* `yield`
* `Future.delayed()`

The stream is consumed using `await for`.

## Expected Output

```text
----- Future & Async/Await -----
Delivery Will be Done Soon
Delivery done

----- Try, Catch, Finally -----
Delivery Process Started
Delivery Will be Done Soon
Delivery Done Successfully
Delivery Process Finished

----- Stream & Async* -----
Stream Value: 1
Stream Value: 2
Stream Value: 3
Stream Value: 4
Stream Value: 5
Stream Value: 6

Program Finished
```

## How to Run

Make sure Dart SDK is installed.

Run:

```bash
dart async_await_stream.dart
```

## Concepts Learned

This assignment helped demonstrate how Dart handles asynchronous operations using `Future`, `async`, `await`, and `Stream`.
