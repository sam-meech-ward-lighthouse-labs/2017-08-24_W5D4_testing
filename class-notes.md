# Testing

## What is testing?

* Writing code that tests other code, to make sure it runs properly.
* Test code that tests production code.

## Why do we test?

* We always test our code, in one way or another.
* Automate the process of testing.
* Write tests to make sure we don't have to do the manual tests.
* Writing tests, we document how our code is supposed to be used for ourselves and other developers.

## XCTest

* Xcode Tests
* Assert things, if our assertion is true, our test passes. Otherwise it fails.

* use `@testable` to import your project into the test suite, so you don't need to make everything public.

* A test function is broken down into three parts:
	- Arrange: Setup your data to be tested
	- Act: CAll a method, or do the action that's being tested
	- Assert: `XCTAssert`

### Assertions

* Use the appropriate assertion for what you're doing, if you're testing for equality, use `XCTAssertEqual`


## Tips

* Testing iO is difficult. 
* IO: 
	- Gestures: input through the screen.
	- Button ^
	- Data we download from the web
	- Data we get from the camera
	- Data we get locally from user
	- Core Data / Realm
	- Map stuff
	- Views / View Controllers
	- Post data to network

* Don't test the IO.
* Test the core functionality of your app.

## TDD

* Test Driven Development
* You write your tests first!!!

* Red: Write a test that fails
* Green: Make the test pass, as quickly as possible. Most of the time, this means writing some bad code.
* Refactor: Make your code better

* Write only enough test to fail. Not compiling counts as failing. As soon as you see red, stop writing test.
* Write only enough production code to make that test pass.
* Refactor
* Small cycles means your never that far away from when your entire app worked. At least the parts that were tested.
* Start with the most denegenrate test case.


## Links

* Video: <https://www.youtube.com/watch?v=Qh3bDmHkyyg>
* Code: <>


