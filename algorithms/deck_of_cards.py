#!/usr/bin/env python3
"""Python solution for CtCI 6th Edition Problem 7.1

Design the data structures for a generic deck of cards.

Deck of cards will be a typical deck of cards with 52 cards including four
suits clubs, spades, diamonds & hearts. Each Suit will have an 2 - ace.
"""
import unittest


class Card:
    """A card with a suit and a value."""

    def __init__(self, suit, value):
        self.suit = suit.lower()
        self.value = value.lower()

    @property
    def suit(self):
        return self._suit

    @suit.setter
    def suit(self, suit_name):
        valid_suit_names = ["clubs", "spades", "diamonds", "hearts"]
        if suit_name in valid_suit_names:
            self._suit = suit_name
        else:
            raise Exception("Card suit must be {}".format(valid_suit_names))

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value_name):
        valid_value_names = ["2", "3", "4", "5", "6", "7", "8", "9", "10",
                             "jack", "queen", "king", "ace"]
        if value_name in valid_value_names:
            self._value = value_name
        else:
            raise Exception("Card value must be {}".format(valid_value_names))

    def __repr__(self):
        return "Card('" + self.suit + "', '" + self.value + "')"

class TestCard(unittest.TestCase):

    def test_valid_suit(self):
        """Card can be created with a valid suit"""
        valid_suit_names = ["clubs", "spades", "diamonds", "hearts"]
        for suit in valid_suit_names:
            with self.subTest(suit=suit):
                self.assertTrue(Card(suit, "ace"))

    def test_invalid_suit(self):
        """Exception raised when invalid suit is specified"""
        with self.assertRaises(Exception):
            Card("invalid_suit", "ace")

    def test_valid_value(self):
        """Card can be created with a valid value"""
        valid_value_names = ["2", "3", "4", "5", "6", "7", "8", "9", "10",
                             "jack", "queen", "king", "ace"]
        for value in valid_value_names:
            with self.subTest(value=value):
                self.assertTrue(Card("clubs", value))

    def test_invalid_value(self):
        """Exception raised when invalid value is specified"""
        with self.assertRaises(Exception):
            Card("clubs", "invalid_value")





