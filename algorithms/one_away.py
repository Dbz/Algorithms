#!/usr/bin/env python3
""" Python solution for CtCI 6th Edition Problem 1.5

There are three types of edits that can be performed on strings:
insert a character, remove a character, or replace a character.
Given two strings, write a function to check if they are one edit
(or zero edits) away.

>>> is_one_away("pale", "ple")
True
>>> is_one_away("pales", "pale")
True
>>> is_one_away("pale", "bale")
True
>>> is_one_away("pale", "bake")
False
>>> is_one_away("long", "short")
False
>>> is_one_away("toolong", "short")
False
>>> is_one_away("held", "hello")
False
>>> is_one_away("hello", "hellooooo")
False
>>> is_one_away("hello", "ohell")
False
>>> is_one_away("hello", "hoell")
False
"""


def is_one_away(string1, string2):
    longer, shorter = ([string1, string2] if len(string1) >= len(string2)
                       else [string2, string1])
    edits_away = 0
    if len(longer) == len(shorter):
        for i in range(len(longer)):
            if longer[i] != shorter[i]:
                edits_away += 1
            if edits_away == 2:
                return False
        return True
    elif len(longer) - len(shorter) == 1:
        for i in range(len(longer)):
            if i - edits_away >= len(shorter):
                edits_away += 1
            elif longer[i] != shorter[i - edits_away]:
                edits_away += 1
            if edits_away == 2:
                return False
        return True
    else:
        return False

if __name__ == "__main__":
    first_word = input("First Word? ")
    second_word = input("Second Word? ")
    if is_one_away(first_word, second_word):
        print("{} is one away from {}.".format(first_word, second_word))
    else:
        print("{} is not one away from {}.".format(first_word, second_word))
