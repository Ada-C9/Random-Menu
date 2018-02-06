# 20180205 Ruby Practice; Random Menu Generator

## At a Glance

- Create a program that runs from the Terminal that will create a random menu based on several items that you determine
- Individual, [stage 1](https://github.com/Ada-Developers-Academy/pedagogy/blob/master/rule-of-three.md#stage-1) project
- Due before class, Tuesday Feb 6

## Baseline
Come up with the three arrays of ten items each. Each list should be a different type of food or descriptor for that food.

For example, the first array can contain adjectives, the second, cooking styles and the third, foods. If this was the array selection, it could create a few items like:
  - hot pan-fried dumplings
  - soft steamed clams
  - etc.

## Primary Requirements
Create a random menu generator that can be played from the Terminal.

Your generator should pull one item from each array you made in the baseline requirements to create a "menu item".

When the program runs, it should create and show a list of ten numbered menu items.
```ruby
1. hot pan-fried dumplings
2. soft steamed clams
3. ...
...
10. creamy taco cake
```

## Test & Verify

Before you submit your work it's important to test your program and ensure it's working properly.  Later we will teach you nifty ways to automate this testing, but for now we'll do things the old fashioned way.

Make sure you run your program and ensure it's working.  Among your tests ensure that:

*  The menu items are selected randomly.
*  There are 10 menu items.
*  Each item should pull one word from each of the 3 arrays.  
*  The items are numbers 1-10 (not starting at zero).
*  Run the program a few times and ensure that the last word in the arrays are used.  Also ensure that the first word in the arrays are used at least occasionally.  

## Optional Enhancements
- Expand your solution to ensure that no descriptive term in a menu item is ever repeated. So if the first menu item is `hot pan-fried dumplings`, the the phrases `hot`, `pan-friend` and `dumpling` cannot individually be used in any other menu items.
- Expand your solution to allow the user to determine how many items they'd like to see via user input.
  __Note:__ You will need to ensure that this user-chosen number of items is not larger than the number of items you have in your arrays.
- Instead of using hardcoded or predefined arrays, make your program accept user input. This user input will be utilized to generate the menu items. You'll need to prompt for and store a varying number of entries for each food-type array.
