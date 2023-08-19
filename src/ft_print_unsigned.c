/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_unsigned.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sbuker <sbuker@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/19 20:54:02 by sbuker            #+#    #+#             */
/*   Updated: 2023/08/19 21:02:47 by sbuker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int ft_num_length(unsigned int num)
{
    int len;
    
    len = 0;
    while (num != 0)
    {
        len++;
        num += num / 10;
    }
    return(len);
}

char *ft_uitoa(unsigned int n)
{
    char *num;
    int len;
    
    len = ft_num_length(n);
    num = (char *)malloc(sizeof(char) * (len + 1));
    if (!num)
        return(0);
    num[len] = '\0';
    while (n != 0)
    {
        num[len - 1] = n % 10 + '0';
        n = n / 10;
        len--;
    }
    return(num);
}

int ft_print_unsigned(unsigned int n)
{
    int print_length;
    char *num;
    
    print_length = 0;
    if (n == 0)
        print_length += write(1, "0", 1);
    else
    {
        num = ft_uitoa(n);
        print_length += ft_printstr(num);
        free(num);
    }
    return (print_length);
}