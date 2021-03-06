Required Tasks.

1.(Done) Get the Calculator working as demonstrated in lectures 1 and 2.

2. (Done) Your Calculator already works with floating point numbers (e.g. if you touch 3 ÷ 4 =,

it will properly show 0.75), however, there is no way for the user to enter a floating point

number directly. Fix this by allowing legal floating point numbers to be entered (e.g.

“192.168.0.1” is not a legal floating point number!). You will need to have a “.”

button in your calculator. Don’t worry too much about precision or significant digits

in this assignment (doing so is Extra Credit).

3. (Done) Add some more operations buttons to your calculator such that it has at least a dozen

operations total (it can have even more if you like). You can choose whatever

operations appeal to you. The buttons must arrange themselves nicely in portrait and

landscape modes on all iPhone 6’s and 7’s.

4. (Done)Use color to make your UI look nice. At the very least, your operations buttons must

be a different color than your keypad buttons, but otherwise you can use color in

whatever way you think looks nice.

5. (Busy)Add a Bool property to your CalculatorBrain called resultIsPending which returns

whether there is a binary operation pending.

6. Add a String property to your CalculatorBrain called description which returns a

description of the sequence of operands and operations that led to the value returned

by result (or the result so far if resultIsPending). The character = (the equals sign)

should never appear in this description, nor should ... (ellipses).

7. Implement a UILabel in your UI which shows the sequence of operands and

operations that led to (or is leading to if resultIsPending) what is (or “will be” if

resultIsPending) showing in the display. If resultIsPending is true, put . . . on the

end of the UILabel, else put =. If the userIsInTheMiddleOfTyping, you can leave the

UILabel showing whatever was there before the user started typing the number.

Examples ...

a. touching 7 + would show “7 + ...” (with 7 still in the display)

b. 7 + 9 would show “7 + ...” (9 in the display)

c. 7 + 9 = would show “7 + 9 =” (16 in the display)

d. 7 + 9 = √ would show “√(7 + 9) =” (4 in the display)

e. 7 + 9 = √ + 2 = would show “√(7 + 9) + 2 =” (6 in the display)

f. 7 + 9 √ would show “7 + √(9) ...” (3 in the display)

g. 7 + 9 √ = would show “7 + √(9) =“ (10 in the display)

h. 7 + 9 = + 6 = + 3 = would show “7 + 9 + 6 + 3 =” (25 in the display)

i. 7 + 9 = √ 6 + 3 = would show “6 + 3 =” (9 in the display)

j. 5 + 6 = 7 3 would show “5 + 6 =” (73 in the display)

k. 4 × π = would show “4 × π =“ (12.5663706143592 in the display)

PAGE 2 OF 8 ASSIGNMENT I: CALCULATOR

CS193P IOS APPLICATION DEVELOPMENT WINTER 2017

8. Add a C button that clears everything (your display, the new UILabel you added

above, any pending binary operations, etc.). Ideally, this should leave your Calculator

in the same state it was in when you launched it.
