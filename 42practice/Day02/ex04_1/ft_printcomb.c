#include "main.h"

void	ft_print(char a, char b, char c)
{
	ft_putchar(a);
	ft_putchar(b);
	ft_putchar(c);

	if (a != 55)
	{
		ft_putchar(',');
		ft_putchar(' ');
	}

}

void	ft_print_comb(void)
{
	char a;
	char b;
	char c;

	a = 48;
	b = 48;
	c = 48;

	while (a <= 57)
	{
		while (b <= 57)
		{
			while (c <=57)
			{
				if ((a < b) && (b <c))
				{
					ft_print (a,b,c);
				}

				c++;
			}
			c = 48;
			b++;
		}
		b = 48;
		a++;
	}
}
