#!/usr/bin/env python3
"""Python solution for CtCI 6th Edition Problem 1.7

Given an image represented by an NxN matrix, where each pixel in the image is
4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
place?

Odd sized matrix
>>> rotate_matrix([['q','w','e'],['a','s','d'],['z','x','c']])
[['z', 'a', 'q'], ['x', 's', 'w'], ['c', 'd', 'e']]

Even sized matrix
>>> rotate_matrix([['1','2','3','4'],['q','w','e','r'],['a','s','d','f'],['z','x','c','v']])
[['z', 'a', 'q', '1'], ['x', 's', 'w', '2'], ['c', 'd', 'e', '3'], ['v', 'f', 'r', '4']]


"""

# Solution looks at each element once making it O(n)
def rotate_matrix(matrix):
    rotated_matrix = []
    # Working from back to front, for each list in the matrix, take each
    # element and append it to the list in rotated_matrix that matches it's
    # position number.
    for row in range(len(matrix)):
        for position, element in enumerate(matrix[-(row + 1)]):
            # Add lists as needed to rotated_matrix
            if position >= len(rotated_matrix):
                rotated_matrix.append([])
            rotated_matrix[position].append(element)
    return rotated_matrix


