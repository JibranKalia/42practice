#include <stdio.h>

void	ft_ultimate_div_mod(int *a, int *b)
{
	int num;
	int den;
	num = *a;
	den = *b;

	*a = num/den;
	*b = num%den;
}


int main(void)
{
	int divanswer = 44;
	int modanswer = 5;

	ft_ultimate_div_mod(&divanswer, &modanswer);

	printf("%d \n", divanswer);
	printf("%d", modanswer);
}
