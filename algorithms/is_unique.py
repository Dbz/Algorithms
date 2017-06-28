#!/usr/bin/env python3
# CtCI 6th Edition Problem 1.1
# Implement an algorithm to determine if a string has all unique characters.

# O(n^2) solution
def is_unique(string):
    for char in string:
        if string.count(char) > 1:
            return False
    return True

print(is_unique("test"))
print(is_unique("true"))

# I also saw this solution on SO that I really loved how concise it was.
# https://stackoverflow.com/a/35855968/4179267

# O(n) solution
def is_unique(string):
    return len(set(string)) == len(string)

print(is_unique("test"))
print(is_unique("true"))
