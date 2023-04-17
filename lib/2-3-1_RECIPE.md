# {{PROBLEM}} READING SPEED ESTIMATOR

## 1. Describe the Problem

_The does a lot of reading, so they would like a program that estimates how long it would take to read a given text with their approx 200wpm._

## 2. Design the Method Signature

_Method Name: read_est(text_arr) It will return mins and secs to read. Side Effects: A continuous return value displayed through a discreet object_

```ruby

# `read_est` number of words in text / 200wpm
read_est(text_arr)
text: string, the passage the reader is looking at (e.g. "In this thesis I will ...")
text_arr: array, the passage split apart by spaces (e.g. ["In", "this", "thesis"])

```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

read_est("the quick brown fox jumped over the lazy dog") => 0 mins 3 secs
read_est("HELLO WORLD") => 0 mins 1 secs
read_est(nil) throws an error
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
