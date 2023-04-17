{{PROBLEM}} READING SPEED ESTIMATOR
1. Describe the Problem
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

```
ruby 

is_correct = check_grammar(text)
# text is a string with words in it
# is_correct is a boolean depending on whether it checks out

```

3. Create Examples as Tests
# EXAMPLES

```
ruby

# 1 
check_grammar("")
# fail => "Not a sentence."

# 2
check_grammar("Hello, I am Cam.")
# => true

# 3
check_grammar("HELLO, I am Cam.")
# => true

# 4
check_grammar("Hello, I am Cam,")
# => false

# 5 
check_grammar("hello, I am Cam.")
# => false

# 6
check_grammar("Hello, I am Cam!")
# => true

```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.