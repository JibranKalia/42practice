#include "main.h"

void ft_determinevalue(char digit1_lvl1, char digit2_lvl1, char digit3_lvl1, int count_lvl2)
{

  int count_lvl1;
  count_lvl1 = 0;
  char space;
  space = ',';

	while (count_lvl1 <= count_lvl2)
	{
    ft_putchar(digit1_lvl1);
    ft_putchar(digit2_lvl1);
    ft_putchar(digit3_lvl1);
    ft_putchar(space);
		++digit3_lvl1;
    ++count_lvl1;
	}



}
