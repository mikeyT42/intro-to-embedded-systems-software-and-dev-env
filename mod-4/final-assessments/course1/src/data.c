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

char *recursive_itoa(char *buff_pos, const uint32_t quotient,
                     const uint32_t base, uint8_t *const length);
char itoc(const uint32_t remainder, const uint32_t base);

/*******************************************************************************
 Function Definitions
*******************************************************************************/
uint8_t my_itoa(const int32_t data, uint8_t *const ptr, const uint32_t base) {
  const uint8_t MAX_LEN = 34; // Includes the sign and \0.
  char buff[MAX_LEN];

  uint8_t length = 0;
  if (data % 2 == 0) {
    // blah
  } else {
    uint32_t made_pos = (~data) + 1;
    char *start = buff;
    *start = '-';
    char *buff_pos = start + 1;
    buff_pos = recursive_itoa(buff_pos, made_pos, base, &length);
    *buff_pos = '\0';
  }

  return length;
}

// -----------------------------------------------------------------------------
char *recursive_itoa(char *buff_pos, const uint32_t quotient,
                     const uint32_t base, uint8_t *const length) {
  if (quotient == 0)
    return buff_pos;

  const uint32_t new_quotient = quotient / base;
  const uint32_t remainder = quotient % base;
  char converted = itoc(remainder, base);
  *buff_pos = converted;
  *length += 1;
  return recursive_itoa(++buff_pos, new_quotient, base, length);
}

// -----------------------------------------------------------------------------
char itoc(const uint32_t remainder, const uint32_t base) {
  uint8_t ascii_inc = 48;
  if (base > 10 && remainder > 9)
    ascii_inc = 55;

  return (char)remainder + ascii_inc;
}
