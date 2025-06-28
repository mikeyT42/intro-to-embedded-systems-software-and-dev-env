/******************************************************************************
 * Copyright (C) 2025 by Michael Torres
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Michael Torres is not liable for any misuse of this material.
 *
 *****************************************************************************/
/**
 * @file data.h
 * @brief Abstraction of string and integer operations
 *
 * This header file provides an abstraction of using provided integers or
 * strings and changing them into the other respective form.
 *
 * @author Michael Torres
 * @date June 22, 2025
 *
 */
#ifndef __DATA_H__
#define __DATA_H__

#include <stdint.h>

#define MAX_LEN (32)

/**
 * @brief Convert a given integer into a string.
 *
 * Take the given integer and turn it into a string with a given base.
 *
 * @param data The number to convert
 * @param ptr The string that will be saved into
 * @param base The number base that will be converted into
 *
 * @return The length of the converted string
 */
uint8_t my_itoa(const int32_t data, uint8_t *const ptr, const uint32_t base);

/**
 * @brief Convert a given string into an integer.
 *
 * Take the given string and turn it into an integer with a given base.
 *
 * @param ptr The string that will be converted from
 * @param digits The number of digits in the string
 * @param base The number base that the string is in
 *
 * @return The converted integer
 */
int32_t my_atoi(const uint8_t *const ptr, const uint8_t digits,
                const uint32_t base);

#endif /* __DATA_H__ */
