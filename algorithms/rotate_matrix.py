#!/usr/bin/env python3
"""Python solution for CtCI 6th Edition Problem 1.7

Given an image represented by an NxN matrix, where each pixel in the image is
4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
place?

Odd sized matrix
>>> rotate_matrix([['q', 'w', 'e'], ['a', 's', 'd'], ['z', 'x', 'c']])
[['z', 'a', 'q'], ['x', 's', 'w'], ['c', 'd', 'e']]

Even sized matrix
>>> rotate_matrix([['1', '2', '3', '4'], ['q', 'w', 'e', 'r'], ['a', 's', 'd', 'f'], ['z', 'x', 'c', 'v']])
[['z', 'a', 'q', '1'], ['x', 's', 'w', '2'], ['c', 'd', 'e', '3'], ['v', 'f', 'r', '4']]

Solution looks at each element in each list making it O(E*L)
"""


def rotate_matrix(matrix):
    """combine the elements of each list with zip and then iterate through the
    lists in reverse using a slice with a step of -1.
    """
    return list(list(x)[::-1] for x in zip(*matrix))
