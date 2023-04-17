{{PROBLEM}} READING SPEED ESTIMATOR
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

```
ruby 

is_there = task_checker(text)
# text is a string with words in it
# is_there is a boolean depending on whether or not #TODO was there

```

3. Create Examples as Tests
# EXAMPLES

```
ruby

# 1 
task_checker("")
# fail => "No text to check."

# 2
task_checker("Hello, I am Cam. This is my #TODO list: ")
# => true

# 3
check_grammar("Hello, I am Cam. I've done everything I need to do")
# => false

```

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.