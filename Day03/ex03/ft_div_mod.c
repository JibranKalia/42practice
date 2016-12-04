#include <stdio.h>

void	ft_div_mod(int a, int b, int *div, int *mod)
{
	*div = a/b;
	*mod = a%b;
}


int main(void)
{
	int divanswer;
	int modanswer;

	ft_div_mod(39, 3, &divanswer, &modanswer);

	printf("%d \n", divanswer);
	printf("%d", modanswer);
}
