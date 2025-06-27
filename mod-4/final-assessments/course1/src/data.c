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
 * @file data.c
 * @brief Abstraction of string and integer operations
 *
 * This is the implementation file that provides an abstraction of using
 * provided integers or strings and changing them into the other respective
 * form.
 *
 * @author Michael Torres
 * @date June 22, 2025
 *
 */
#include "data.h"
#include <stdio.h>

/**
 * @brief Recursively calculate each number character
 *
 * Given a calculated quotient, get the remainder of a new division which
 * represents a character number.
 *
 * @param buff_pos Pointer to a position in a buffer; it is incremented
 * @param quotient The current quotient which is then used for a new division
 * @param base This is the number base of the string; it's also used in division
 * @param length This is a pointer to the new string length; it is incremented
 *
 * @return The buffer position that has been incremented to
 */
char *recursive_itoa(char *buff_pos, const uint32_t quotient,
                     const uint32_t base, uint8_t *const length);

/**
 * @brief Take a number and turn it into a character
 *
 * Given a number from the recursive function that represents a character,
 * convert it into a character in that number's base.
 *
 * @param remainder The number that is to be converted into a character
 * @param base The base of the string that the number will represent
 *
 * @return The converted character
 */
char itoc(const uint32_t remainder, const uint32_t base);

/**
 * @brief Take a character and turn it into a number
 *
 * Given a character and turn it into a number from a base number
 * representation.
 *
 * @param c The character to be converted; it is in a base representation
 * @param base The base of the string that the number will represent
 *
 * @return The converted number
 */
uint32_t ctoi(const char c, const uint32_t base);

/*******************************************************************************
 Function Definitions
*******************************************************************************/
uint8_t my_itoa(const int32_t data, uint8_t *const ptr, const uint32_t base) {
  char buff[MAX_LEN];

  uint8_t length = 0;
  if (data >= 0) {
    printf("data = %i\n", data);
    char *start = buff;
    char *end = recursive_itoa(start, data, base, &length);
    *end = '\0';
    length++;
  } else {
    printf("data = %i\n", data);
    uint32_t made_pos = (~data) + 1;
    printf("made_pos = %i\n", made_pos);
    char *start = buff;
    *start = '-';
    length++;
    char *buff_pos = start + 1;
    buff_pos = recursive_itoa(buff_pos, made_pos, base, &length);
    *buff_pos = '\0';
    length++;
  }

  printf("buff = %s\n", buff);
  for (uint8_t i = 0; i < length; i++) {
    char *const from = buff + i;
    uint8_t *const to = ptr + i;
    *to = (uint8_t)*from;
  }
  printf("ptr = %s\n", ptr);

  return length;
}

// -----------------------------------------------------------------------------
char *recursive_itoa(char *buff_pos, const uint32_t quotient,
                     const uint32_t base, uint8_t *const length) {
  printf("quotient = %i\n", quotient);
  if (quotient == 0 || *length == MAX_LEN)
    return buff_pos;

  const uint32_t new_quotient = quotient / base;
  printf("new_quotient = %i\n", new_quotient);
  const uint32_t remainder = quotient % base;
  printf("remainder = %i\n", remainder);
  char converted = itoc(remainder, base);
  printf("converted = %c\n", converted);
  *buff_pos = converted;
  *length += 1;
  return recursive_itoa(++buff_pos, new_quotient, base, length);
}

// -----------------------------------------------------------------------------
char itoc(const uint32_t remainder, const uint32_t base) {
  uint8_t ascii_inc = 48;
  if (base > 10 && remainder > 9)
    ascii_inc = 55;

  return (char)(remainder + ascii_inc);
}

// -----------------------------------------------------------------------------
int32_t my_atoi(const uint8_t *const ptr, const uint8_t digits,
                const uint32_t base) {
  uint8_t is_odd = *ptr == '-';

  uint8_t end = 0;
  if (is_odd)
    end = 1;

  int32_t number = 0;
  uint32_t digit_pos_factor = 1;
  for (uint8_t i = digits; i > end; i--) {
    const char character = (char)(*(ptr + i));
    uint32_t num = ctoi(character, base);
    num *= digit_pos_factor;
    digit_pos_factor *= 10;
  }
  if (is_odd)
    number *= -1;

  return 0;
}

// -----------------------------------------------------------------------------
uint32_t ctoi(const char c, const uint32_t base) {
  uint8_t ascii_inc = 48;
  if (base > 10 && c >= 'A')
    ascii_inc = 55;

  return (uint32_t)(c - ascii_inc);
}
