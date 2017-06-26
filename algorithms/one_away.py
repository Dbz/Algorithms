#!/usr/bin/env python3
# CtCI 6th Edition Problem 1.5
# There are three types of edits that can be performed on strings:
# insert a character, remove a character, or replace a character.
# Given two strings, write a function to check if they are one edit
# (or zero edits) away.
#
# EXAMPLE
# pale, ple -> true
# pales, pale -> true
# pale, bale -> true
# pale, bake -> false


def is_one_away(string1, string2):
    longer, shorter = ([string1, string2] if len(string1) >= len(string2)
                       else [string2, string1])
    edits_away = 0
    if len(longer) == len(shorter):
        for i in range(len(shorter)):
            if longer[i] != shorter[i]:
                edits_away += 1
            if edits_away == 2:
                return False
        return True
    elif len(longer) - len(shorter) == 1:
        for i in range(len(longer)):
            try:
                if longer[i] != shorter[i - edits_away]:
                    edits_away += 1
            # IndexError thrown after reaching end of shorter string
            except IndexError:
                    edits_away += 1
            if edits_away == 2:
                return False
        return True
    else:
        return False

print(is_one_away("pale", "ple"))
print(is_one_away("pales", "pale"))
print(is_one_away("pale", "bale"))
print(is_one_away("pale", "bake"))
print(is_one_away("long", "short"))
print(is_one_away("toolong", "short"))
print(is_one_away("held", "hello"))
print(is_one_away("hello", "hellooooo"))
print(is_one_away("hello", "ohell"))
print(is_one_away("hello", "hoell"))






