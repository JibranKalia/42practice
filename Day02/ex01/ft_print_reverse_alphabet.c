#include "main.h"

void ft_print_alphabet(void)
{
	char letter;

	letter = 'z';

	while (letter >= 'a')
		{
			ft_putchar(letter);
			letter--;
		}

		return ;
}
