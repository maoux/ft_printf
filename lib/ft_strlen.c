/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: heynard <heynard@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/18 17:39:31 by heynard           #+#    #+#             */
/*   Updated: 2017/05/03 14:35:36 by heynard          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

size_t		ft_strlen(char *s)
{
	size_t	size;

	size = 0;
	if (!s)
		return (6);
	while (s[size] != '\0')
		size += 1;
	return (size);
}
