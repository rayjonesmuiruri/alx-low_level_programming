#include <stdio.h>
/**
 * main - Entry point
 * Return:always return 0
*/
int main(void)
{
int first_digit, second_digit;
for (first_digit = 0; first_digit <= 8; first_digit++)
{
for (second_digit = first_digit + 1; second_digit <= 9; second_digit++)
{
putchar('0' + first_digit);
putchar('0' + second_digit);
if (first_digit != 8 || second_digit != 9)
{
putchar(',');
p utchar(' ');
}
}
}
putchar('\n');
return (0);
}
