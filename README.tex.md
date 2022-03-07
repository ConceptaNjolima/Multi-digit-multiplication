
Although multiplying single digits by other single digits is easy, multiplying multi-digit numbers requires more steps. In this paper I will walk through an algorithm for multiplying two multi-digit numbers building off the algorithm for multiplying a multi-digit number and a single digit. Then, I will implement and test this algorithm using Octave software.

## Introduction
Multiplying single digit numbers, say 2 multiplied by 1, is quite a simple task. However, the product of 96 and 3 might require more steps because you do not memorize such products. For example, to calculate 96 * 3, we can let 96 be the number and 3 the multiplier. A possible solution is multiplying the digit in the ones place with the multiplier, that is 6 * 3 = 18. Since 18 is greater than 10, we carry 1 to the tens place value and keep 8 as the product in the ones place value. Then multiplying the tens place value which is 9 * 3 = 27 and adding the carry to get 27 + 1=28. Since 28 is in the tens place, we get 28*10= 280. Then adding the two results, 280 + 8 =288. Therefore 96 * 3=288.
This step-by-step process of solving a problem is an algorithm. We just developed an algorithm for multiplying a multi-digit number with a single digit. But the question remains, how do we multiply two multi-digit numbers?

## Multi-digit multiplication example
To calculate the product of 96 and 20, we build on the single-digit example above and view this problem as two single-digit multiplications; where we add the product of 96 and 0 and the product of 96 and 2(taking into account the place values of the multipliers). The algorithm is as follows:
- Starting with the least significant digit in the first number, that is 6 and the least significant digit in the second number which is 0. We multiply 6 by 0 resulting into 0. Since 0 is less than 10, the least significant digit of the product will be 0
- Then, in the tens position of the first number, we multiply 9 by the ones position of the second number, 0, to get 0. To account for the place value, we multiply 0 by 10 to get 0.
- Adding the results in the ones and tens place values, we get 0 + 0=0. Hence 96 * 0 = 0.
- Then, we use the digit in the tens place of the second number as the multiplier. Starting with
the ones place, we get 6 * 2 = 12.
- Since 12 is greater than 10, we carry 1 and the result in the ones place is 2. To account for the place value, we multiply 2 by 10 to get 20.
- Then in the tens place of the first number, 9 * 2 = 18. Adding the carried value, we get 18 + 1= 19. To account for the place value, we multiply 19 by 100 to get 1900.

- Therefore 96*20=1900+20+0=1920.

The flow chart of this algorithm is as shown below:
<img src="https://drive.google.com/drive/u/0/search?q=multiplier">
