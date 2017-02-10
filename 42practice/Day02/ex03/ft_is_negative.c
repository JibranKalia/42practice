#include "main.h"

void ft_is_negative(int n)
{
	if (n < 0) {

		char result;
		result = 'N';

		ft_putchar(result);
	}

	else if (n >= 0){

		char result;
		result = 'P';

		ft_putchar(result);
	}

		return ;
}
