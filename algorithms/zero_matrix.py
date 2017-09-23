#!/usr/bin/env python3
"""Python solution for CtCI 6th Edition Problem 1.8

Write an algorithm such that if an element in an MxN matrix is 0, its entire
row and column are set to O.

No element is 0
>>> zero_matrix([['q', 'w', 'e'], ['a', 's', 'd'], ['z', 'x', 'c']])
[['q', 'w', 'e'], ['a', 's', 'd'], ['z', 'x', 'c']]

One element is 0
>>> zero_matrix([['q', 'w', 'e'], ['a', '0', 'd'], ['z', 'x', 'c']])
[['q', '0', 'e'], ['0', '0', '0'], ['z', '0', 'c']]

Two elements are 0 in different row/column
>>> zero_matrix([['1', '2', '3', '0'], ['q', 'w', 'e', 'r'], ['a', 's', 'd', 'f'], ['0', 'x', 'c', 'v']])
[['0', '0', '0', '0'], ['0', 'w', 'e', '0'], ['0', 's', 'd', '0'], ['0', '0', '0', '0']]

Two elements are 0 in the same column
>>> zero_matrix([['1', '0', '3', '4'], ['q', 'w', 'e', 'r'], ['a', '0', 'd', 'f'], ['z', 'x', 'c', 'v']])
[['0', '0', '0', '0'], ['q', '0', 'e', 'r'], ['0', '0', '0', '0'], ['z', '0', 'c', 'v']]

Solution looks at each element in each list, more than one, making it O(E*L)
"""

def zero_matrix(matrix):
    zero_coordinates = find_zeros(matrix)
    if len(zero_coordinates['rows']) > 0:
        for list_number, list in enumerate(matrix):
            for element_number, element in enumerate(list):
                if (   list_number    in zero_coordinates['rows']
                    or element_number in zero_coordinates['columns']):
                        matrix[list_number][element_number] = '0'
    return matrix


def find_zeros(matrix):
    """Returns a dict  with list of rows and columns that contain zeros
    within the matrix

    >>> zero_coordinates = find_zeros([['0', 'w', 'e'], ['a', 's', 'd'], ['z', 'x', '0']])
    >>> sorted(zero_coordinates.items())
    [('columns', [0, 2]), ('rows', [0, 2])]
    """
    rows = []
    columns = []
    coordinates = {'rows': rows, 'columns': columns}
    for list_number, list in enumerate(matrix):
        for element_number, element in enumerate(list):
            if element == '0':
                coordinates['rows'].append(list_number)
                coordinates['columns'].append(element_number)
    return coordinates
