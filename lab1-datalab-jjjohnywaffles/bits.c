/* 
 * CS:APP Data Lab 
 * 
 * <Jonathan Hu: johu5262: jjjohnywaffles>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* 
 * bitOr - x|y using only ~ and & 
 *   Example: bitOr(6, 5) = 7
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitOr(int x, int y) {
  return ~(~x & ~y);
}
/*
 * isZero - returns 1 if x == 0, and 0 otherwise 
 *   Examples: isZero(5) = 0, isZero(0) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int isZero(int x) {
  return !x;
}
/* 
 * minusOne - return a value of -1 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int minusOne(void) {
  return ~0;
}
/* 
 * anyOddBit - return 1 if any odd-numbered bit in word set to 1
 *   Examples anyOddBit(0x5) = 0, anyOddBit(0x7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int anyOddBit(int x) {
  int mask = 0xAA;
  int oddBits = (x & mask) | (x >> 8 & mask) | (x >> 16 & mask) | (x >> 24 & mask);
  return !!(oddBits);
}
/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
  int sum = x + y;                  // Sum of x and y
  int overflow1 = x >> 31;          // Sign bit of x
  int overflow2 = y >> 31;          // Sign bit of y
  int overflow3 = sum >> 31;        // Sign bit of the sum
  int isOverflow = ((overflow1 & overflow2 & ~overflow3) | (~overflow1 & ~overflow2 & overflow3));
  
  // Check if overflow occurred during addition
  return !isOverflow;  // Return true if there was no overflow, false otherwise
}
/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2 
 */
int leastBitPos(int x) {
  return x & (~x + 1);
}
/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
  int lowerBound = 0x30;  // ASCII value of '0'
  int upperBound = 0x39;  // ASCII value of '9'

  // Check if x is greater than or equal to the lower bound
  int isGreaterOrEqual = !((x + (~lowerBound + 1)) >> 31);

  // Check if x is less than or equal to the upper bound
  int isLessOrEqual = !((upperBound + (~x + 1)) >> 31);

  // Use bitwise AND to combine results
  return isGreaterOrEqual & isLessOrEqual;
}

/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  int isTrue = !(!x);  // Check if x is nonzero
  int mask = ~(isTrue) + 1;  // Create a mask with all bits set if x is nonzero
  return (y & mask) | (z & ~mask);  // Use bitwise AND and OR to select y or z based on x
}

/* 
 * reverseBytes - reverse the bytes of x
 *   Example: reverseBytes(0x01020304) = 0x04030201
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3
 */
int reverseBytes(int x) {
  int byte0 = x & 0xFF;           // Extract the least significant byte of x
  int byte1 = (x >> 8) & 0xFF;    // Extract the second least significant byte of x
  int byte2 = (x >> 16) & 0xFF;   // Extract the third least significant byte of x
  int byte3 = (x >> 24) & 0xFF;   // Extract the most significant byte of x

  // Reverse the order of the bytes and construct the result
  int result = (byte0 << 24) | (byte1 << 16) | (byte2 << 8) | (byte3 << 0);
  return result;                  // Return the reversed value
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x)
{
    int mask1 = 0x11 | (0x11 << 8);  // Mask to count bits in each pair of bits

    int mask2 = mask1 | (mask1 << 16);  // Mask to combine pair counts into a single count

    int sum = x & mask2;  // Count bits in each pair of bits
    sum = sum + ((x >> 1) & mask2);  // Shift x by 1 bit and count bits in each pair
    sum = sum + ((x >> 2) & mask2);  // Shift x by 2 bits and count bits in each pair
    sum = sum + ((x >> 3) & mask2);  // Shift x by 3 bits and count bits in each pair

    sum = sum + (sum >> 16);  // Combine the counts of pairs into a single count

    mask1 = 0xF | (0xF << 8);  // Mask to count bits in each nibble (4 bits)
    sum = (sum & mask1) + ((sum >> 4) & mask1);  // Count bits in each nibble (4 bits)

    return ((sum + (sum >> 8)) & 0x3F);  // Combine the counts of nibbles into a final count of bits
}
/*
 * satAdd - adds two numbers but when positive overflow occurs, returns
 *          maximum possible value (Tmax), and when negative overflow occurs,
 *          it returns minimum negative value (Tmin)
 *   Examples: satAdd(0x40000000,0x40000000) = 0x7fffffff
 *             satAdd(0x80000000,0xffffffff) = 0x80000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 30
 *   Rating: 4
 */
int satAdd(int x, int y) {
  int sum = x + y;         // Calculate the sum of x and y
  int xsign = x >> 31;     // Get the sign bit of x
  int ysign = y >> 31;     // Get the sign bit of y
  int xysign = sum >> 31;  // Get the sign bit of the sum
  int overflow = (~(xsign ^ ysign)) & (xsign ^ xysign); // Check for overflow
  
  // Check for positive overflow if the sign of x is negative and overflowed
  int positive = overflow & (~(xsign ^ 0)); 
  
  // Check for negative overflow if the sign of x is positive and overflowed
  int negative = ~(overflow & (~(xsign ^ 0))); 
  
  int minimum = 1 << 31;   // Set the minimum value
  int maximum = ~minimum;  // Set the maximum value
  
  // Calculate the final result by handling overflow cases
  int final = (~overflow & sum) | (overflow & ((positive & maximum) | (negative & minimum)));
  return final;                              // Return the final result
}
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples: trueFiveEighths(11) = 6
 *            trueFiveEighths(-9) = -5
 *            trueFiveEighths(0x30000000) = 0x1E000000 (no overflow)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 4
 */

int trueFiveEighths(int x) {
    int sign = (x >> 31) & 1;           // Get the sign bit of x
    int shifted_sign = sign << 3;       // Shift the sign bit to the left by 3 bits
    int sub = ~sign + 1;                // Calculate the negation of the sign (either -1 or 0)
    int first = ((x & (0xFF << 24)) + shifted_sign + sub) >> 3;  // Compute the first part of the result

    int remaining = (x & ~(0xFF << 24)); // Extract the remaining bits from x

    // Calculate result by adding shifted_sign and sub and performing a right shift by 3
    int second = (((remaining << 2) + remaining) + shifted_sign + sub) >> 3;

    return (first << 2) + first + second;    // Return the combined result
}
/*
 * Extra credit
 */
/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
  unsigned absUf = uf & 0x7FFFFFFF; // Set sign bit to 0

  // Check if uf is NaN
  if (absUf > 0x7F800000) {
    return uf;
  }

  return absUf;
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  return 2;
}
