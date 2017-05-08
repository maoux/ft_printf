/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_buffer.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: heynard <heynard@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/28 20:36:03 by heynard           #+#    #+#             */
/*   Updated: 2017/05/08 11:27:40 by heynard          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

void			full_print_buffer(char buffer[BUF_SIZE])
{
	write(1, buffer, BUF_SIZE - 1);
}

void			final_print_buffer(char buffer[BUF_SIZE])
{
	size_t		len;

	len = 0;
	while (buffer[len] != '\0' || buffer[len + 1] != '\0')
		len++;
	write(1, buffer, len);
}

void			error_print_buffer(char buffer[BUF_SIZE], size_t written)
{
	write(1, buffer, written);
}
