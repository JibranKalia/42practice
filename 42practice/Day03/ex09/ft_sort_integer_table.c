#include "main.h"
#include <stdio.h>

void	ft_sort_integer_table(int *tab, int size)
{

	int firstnumber;
	int secondnumber;
	int i;

	i = 0;
	firstnumber = 0;
	secondnumber = 1;

	while (i < size)
	{
		while (secondnumber < size)
		{
			if (tab[firstnumber] > tab[secondnumber])

			{
				int a;

				a = tab[secondnumber];
				tab[secondnumber] = tab[firstnumber];
				tab[firstnumber] = a;
			}

			firstnumber++;
			secondnumber++;
		}

		i++;

		firstnumber = 0;
		secondnumber = 1;
	}
}
