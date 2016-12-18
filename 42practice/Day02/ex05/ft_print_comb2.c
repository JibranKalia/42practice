#include "main.h"

void ft_print(char a, char b, char c, char d)
{
	ft_putchar(a);
	ft_putchar(b);
	ft_putchar(' ');
	ft_putchar(c);
	ft_putchar(d);

	if ((a != 57) || (b != 56) || (c != 57) || (d != 57))
	{
		ft_putchar(',');
		ft_putchar(' ');
	}

}

void	ft_printcomb2(void)
{
	char a;
	char b;
	char c;
	char d;

	a = 48;
	b = 48;
	c = 48;
	d = 48;


	while (a <= 57)
	{
		while (b <= 57)
		{

				while (c <= 57)
				{
						while (d <= 57)
						{
								if ((a <= c) && (b < d))
								{
									ft_print(a,b,c,d);
								}
								d++;
						}

						d = 48;
						c++;
				}

				c = 48;
				b++;
		}

		b = 48;
		a++;
	}



}
