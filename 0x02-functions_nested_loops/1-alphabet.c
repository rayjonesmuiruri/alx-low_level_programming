#include "main.h"

/**
 * print_alphabet - prints a-z
 *
 * Return: Success 0
 */

void print_alphabet(void)
{
	int c;

	for (c = 'a'; c <= 'z'; c++)
	{
		_putchar(c);
	}

	_putchar('\n');
}
