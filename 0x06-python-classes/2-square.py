#!/usr/bin/python3
"""Define a class Square."""


class Square:
    """Represents a Square."""

    def __init__(self, size=0):
        """Initialize a new Square.

        Args:
        size (int): The size of the new Square.
        """

        if not isinstance(size, int):
            raise TypeError("Size must be an integer")
        elif size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size
