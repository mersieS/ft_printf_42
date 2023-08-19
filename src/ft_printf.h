/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sbuker <sbuker@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/13 20:37:38 by sbuker            #+#    #+#             */
/*   Updated: 2023/08/19 21:23:27 by sbuker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

#include "../libft/libft.h"
#include <stdarg.h>
#include <unistd.h>

int ft_printchar(int c);
int ft_print_ptr(unsigned long long ptr);
int ft_print_hex(unsigned int num, const char format);
int ft_print_unsigned(unsigned int n);

#endif