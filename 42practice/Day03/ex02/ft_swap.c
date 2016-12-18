#include <stdio.h>

void	ft_swap(int *a, int *b)
{
	int swap;
	swap = *a;
	*a = *b;
	*b = swap;
}


int main(void)
{
	int number1;
	int number2;

	number1 = 0;
	number2 = 5;

	printf("number1 = %d\n", number1);
	printf("number2 = %d\n", number2);

	ft_swap(&number1, &number2);

	printf("number1 = %d\n", number1);
	printf("number2 = %d\n", number2);

	return (0);
}
