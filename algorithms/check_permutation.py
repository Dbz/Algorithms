#!/usr/bin/env python3
# CtCI 6th Edition Problem 1.2
# Given two strings, write a method to decide if one is a permutation of the
# other.

from timeit import timeit
import collections

# Sorting is O(nlogn) and comparing is O(n), so this is an O(nlogn) solution
def is_permutation(string1, string2):
    return (len(string1) == len(string2)
            and sorted(string1) == sorted(string2))

print(is_permutation("test", "ttse"))
print(is_permutation("test", "false"))

# Counting is O(n) and comparing is O(n) making this O(n)
def is_permutation_with_counter(string1, string2):
    return (len(string1) == len(string2)
            and collections.Counter(string1) == collections.Counter(string2))

print(is_permutation_with_counter("test", "ttse"))
print(is_permutation_with_counter("test", "false"))

# Using the counter method is slower for small strings, but faster for larger
# strings. For example

small_string1 = "test"
small_string2 = "ttse"

print(timeit('is_permutation(small_string1, small_string2)',
             globals=globals()))
# Finishes in ~1.2
print(timeit('is_permutation_with_counter(small_string1, small_string2)',
             globals=globals()))
# Finishes in ~7.1

# these are permutations of each other
large_string1 = "fafdegffewrkgwqrgqiwuiqruichmuruyurvcwhopycywvrysdafgfghfgfgfuyurgffewvcwhopycywvrysdafgfghfgfgffafdegqiwuiqruichmurrkgwqr"
large_string2 = "uyurgffewvcwhopycywvrysdafgfghfgfgffafdegqiwuiqruichmurrkgwqrfafdegffewrkgwqrgqiwuiqruichmuruyurvcwhopycywvrysdafgfghfgfgf"

print(timeit('is_permutation(large_string1, large_string2)',
             globals=globals()))
# Finishes in ~27.7
print(timeit('is_permutation_with_counter(large_string1, large_string2)',
             globals=globals()))
# Finishes in ~15.9

# So one method might be preferable to another depending on the expected size
# of the strings
