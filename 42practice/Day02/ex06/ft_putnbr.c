#include "main.h"
#include <stdio.h>

void	ft_putnbr(int n)
{
	char *str;
	str = n + 0;

	sprintf(str, "%d", n);
	printf("%s", str);

}
