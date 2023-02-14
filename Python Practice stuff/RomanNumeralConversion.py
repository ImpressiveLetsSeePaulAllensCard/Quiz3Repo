# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import array as ary

def intToRoman(num):
    val =[1000,900,500,400,
          100,90,50,40,
          10,9,5,4,
          1
          ]
    symb = ["M","CM","D","CD",
            "C", "XC", "L", "XL",
            "X", "IX", "V","IV",
            "I"
            ]
    roman_num = ''
    i = 0
    while num > 0:
        for _ in range (num//val[i]):
            roman_num += symb[i]
            num -= val[i]
        i+=1
    return roman_num
while True:
    num = int(input("Enter a number to convert "))
    print("Roman Numeral Conversion is:",intToRoman(num))
    ans = input("Do you wish to continue? Hit anything for yes and n for no")
    if ans == 'q':
        print("Now exiting")
        break
# how does this WORK

