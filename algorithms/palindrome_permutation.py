#!/usr/bin/env python3
# CtCI 6th Edition Problem 1.4
# Given a string, write a function to check if it is a permutation of a
# palindrome. A palindrome is a word or phrase that is the same forwards and
# backwards. A permutation is a rearrangement of letters. The palindrome does
# not need to be limited to just dictionary words.
#
# EXAMPLE
# Input: Tact Coa
# Output: True (permutations: "taco cat". "atco cta". etc.)

# From the example it seems that spaces and case are ignored.
# Strategy to solve: If there is more than one character that appears in the
# string an odd number of times, then the string can't be palindrome permutation

import collections

# Loops through the string which is O(n)
def is_palindrome_permutation(string):
    cha_counts = collections.Counter(string.lower().replace(" ", ""))
    odd_chars = [cha for cha, count in cha_counts.items() if count % 2 == 1]
    return len(odd_chars) <= 1

palindrome_string = "Tact Coa"
nonpalindrome_string = "reddit"

print(is_palindrome_permutation(palindrome_string))
print(is_palindrome_permutation(nonpalindrome_string))
