/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material.
 *
 *****************************************************************************/
/**
 * @file memory.c
 * @brief Abstraction of memory read and write operations
 *
 * This implementation file provides an abstraction of reading and
 * writing to memory via function calls. There is also a globally
 * allocated buffer array used for manipulation.
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#include "memory.h"
#include <stdio.h>

/*******************************************************************************
 Function Definitions
*******************************************************************************/
void set_value(char *ptr, unsigned int index, char value) {
  ptr[index] = value;
}

// -----------------------------------------------------------------------------
void clear_value(char *ptr, unsigned int index) { set_value(ptr, index, 0); }

// -----------------------------------------------------------------------------
char get_value(char *ptr, unsigned int index) { return ptr[index]; }

// -----------------------------------------------------------------------------
void set_all(char *ptr, char value, unsigned int size) {
  unsigned int i;
  for (i = 0; i < size; i++) {
    set_value(ptr, i, value);
  }
}

// -----------------------------------------------------------------------------
void clear_all(char *ptr, unsigned int size) { set_all(ptr, 0, size); }

// -----------------------------------------------------------------------------
uint8_t *my_memcopy(const uint8_t *const src, uint8_t *const dst,
                    const size_t length) {
  for (size_t i = 0; i < length; i++) {
    const uint8_t *const from = src + i;
    uint8_t *const to = dst + i;
    *to = *from;
  }

  return dst;
}

// -----------------------------------------------------------------------------
uint8_t *my_memmove(const uint8_t *const src, uint8_t *dst,
                    const size_t length) {
  uint8_t tmp[length];
  my_memcopy(src, tmp, length);

  for (size_t i = 0; i < length; i++) {
    const uint8_t *const from = tmp + i;
    uint8_t *const to = dst + i;
    if (from == to)
      continue;
    *to = *from;
  }

  return dst;
}

// -----------------------------------------------------------------------------
uint8_t *my_memset(uint8_t *const src, const size_t length,
                   const uint8_t value) {
  for (size_t i = 0; i < length; i++) {
    uint8_t *const to = src + i;
    *to = value;
  }

  return src;
}

// -----------------------------------------------------------------------------
uint8_t *my_memzero(uint8_t *const src, const size_t length) {
  for (size_t i = 0; i < length; i++) {
    uint8_t *const to = src + i;
    *to = 0;
  }

  return src;
}

// -----------------------------------------------------------------------------
uint8_t *my_reverse(uint8_t *const src, const size_t length) {
  /*
   * Move our left and right fingers closer together until they touch, in which
   * case we don't have to swap the values under each finger.
   */
  for (size_t left_finger = 0, right_finger = length - 1;
       left_finger < right_finger; left_finger++, right_finger--) {
    uint8_t *const left_ptr = src + left_finger;
    uint8_t *const right_ptr = src + right_finger;
    const uint8_t tmp = *left_ptr;
    *left_ptr = *right_ptr;
    *right_ptr = tmp;
  }

  return src;
}

// -----------------------------------------------------------------------------
int32_t *reserve_words(const size_t size) {
  return malloc(sizeof(uint32_t) * size);
}

// -----------------------------------------------------------------------------
void free_words(const uint32_t *const src) { free((void *)src); }
