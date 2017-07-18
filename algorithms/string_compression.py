#!/usr/bin/env python3
"""Python solution for CtCI 6th Edition Problem 1.4

Implement a method to perform basic string compression using the counts of
repeated characters. For example, the string aabcccccaaa would become a2b1c5a3.
If the "compressed" string would not become smaller than the original string,
your method should return the original string. You can assume the string has
only uppercase and lowercase letters (a - z).

>>> compress_string("aabcccccaaa")
'a2b1c5a3'

>>> compress_string('aaaaaaaa')
'a8'

Following examples would return strings that are shorter than or equal to the
original string and just return the original string.
>>> compress_string("aabbccaa")
'aabbccaa'

>>> compress_string("aabcca")
'aabcca'

>>> compress_string("abcde")
'abcde'
"""


def compress_string(string):
    char_count = 1
    compressed_string = ""
    for pos, char in enumerate(string):
        if pos + 1 < len(string) and char == string[pos + 1]:
            char_count += 1
        else:
            compressed_chars = char + str(char_count)
            compressed_string = compressed_string + compressed_chars
            char_count = 1
    if len(compressed_string) < len(string):
        return compressed_string
    else:
        return string

if __name__ == "__main__":
    input_string = input("Enter string to compress: ")
    print(compress_string(input_string))
