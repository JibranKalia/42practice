#include "main.h"

void ft_print_comb(void)
{
	char digit1_lvl3;
	char digit2_lvl3;
	char digit3_lvl3;
	int count_lvl3;

	digit1_lvl3 = '0';
	digit2_lvl3 = '1';
	digit3_lvl3 = '2';
	count_lvl3 = 7;

	char digit1_lvl2;
	char digit2_lvl2;
	char digit3_lvl2;
	int count_lvl2;

	while (count_lvl3 >= 0)

	{
		digit1_lvl2 = digit1_lvl3;
		digit2_lvl2 = digit2_lvl3;
		digit3_lvl2 = digit3_lvl3;
		count_lvl2 = count_lvl3;

			while (count_lvl2 >=0)
			{
					int count_lvl1;
				  count_lvl1 = 0;
				  char space;
				  space = ',';

					int digit1_lvl1;
					int digit2_lvl1;
					int digit3_lvl1;

					digit1_lvl1 = digit1_lvl2;
					digit2_lvl1 = digit2_lvl2;
					digit3_lvl1 = digit3_lvl2;

					while (count_lvl1 <= count_lvl2)
					{
				    ft_putchar(digit1_lvl1);
				    ft_putchar(digit2_lvl1);
				    ft_putchar(digit3_lvl1);
				    ft_putchar(space);
						++digit3_lvl1;
				    ++count_lvl1;
					}

					digit3_lvl2++;
					digit2_lvl2++;
					count_lvl2--;
			}

			count_lvl3--;
			digit1_lvl3++;
			digit2_lvl3++;
			digit3_lvl3++;

		}
}
