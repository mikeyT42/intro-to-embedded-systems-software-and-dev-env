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
 * @file memory.h
 * @brief Abstraction of memory read and write operations
 *
 * This header file provides an abstraction of reading and
 * writing to memory via function calls.
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#ifndef __MEMORY_H__
#define __MEMORY_H__

#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

/**
 * @brief Sets a value of a data array
 *
 * Given a pointer to a char data set, this will set a provided
 * index into that data set to the value provided.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 * @param value value to write the the locaiton
 *
 * @return void.
 */
void set_value(char *ptr, unsigned int index, char value);

/**
 * @brief Clear a value of a data array
 *
 * Given a pointer to a char data set, this will clear a provided
 * index into that data set to the value zero.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return void.
 */
void clear_value(char *ptr, unsigned int index);

/**
 * @brief Returns a value of a data array
 *
 * Given a pointer to a char data set, this will read the provided
 * index into that data set and return the value.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return Value to be read.
 */
char get_value(char *ptr, unsigned int index);

/**
 * @brief Sets data array elements to a value
 *
 * Given a pointer to a char data set, this will set a number of elements
 * from a provided data array to the given value. The length is determined
 * by the provided size parameter.
 *
 * @param ptr Pointer to data array
 * @param value value to write the the locaiton
 * @param size Number of elements to set to value
 *
 * @return void.
 */
void set_all(char *ptr, char value, unsigned int size);

/**
 * @brief Clears elements in a data array
 *
 * Given a pointer to a char data set, this will set a clear a number
 * of elements given the size provided. Clear means to set to zero.
 *
 * @param ptr Pointer to data array
 * @param size Number of elements to set to zero
 *
 * @return void.
 */
void clear_all(char *ptr, unsigned int size);

/**
 * @brief Move from the source location to the destination.
 *
 * Takes two byte pointers (one source and one destination) and a length of
 * bytes to move from the source location to the destination. If there is an
 * overlap of source and destination, copy will occur with no data corruption.
 *
 * @param src Pointer to the source block of memory
 * @param dst Pointer to the destination block of memory
 * @param length The number of bytes to move from the source to the destination
 *
 * @return The pointer to the destination
 */
uint8_t *my_memmove(const uint8_t *const src, uint8_t *dst,
                    const size_t length);

/**
 * @brief Copy from the source location to the destination.
 *
 * Takes two byte pointers (one source and one destination) and a length of
 * bytes to copy from the source location to the destination. The behavior is
 * undefined if there is overlap of source and destination. Copy should still
 * occur, but will likely corrupt your data.
 *
 * @param src Pointer to the source block of memory
 * @param dst Pointer to the destination block of memory
 * @param length The number of bytes to copy from the source to the destination
 *
 * @return The pointer to the destination
 */
uint8_t *my_memcopy(const uint8_t *const src, uint8_t *const dst,
                    const size_t length);

/**
 * @brief Set the source's bytes with the value provided.
 *
 * Takes a pointer to a source memory location, a length in bytes and set all
 * locations of that memory to a given value.
 *
 * @param src Pointer to the source block of memory
 * @param length The number of bytes to copy the value into the source
 * @param value The value that is being copied
 *
 * @return The pointer to the source
 */
uint8_t *my_memset(uint8_t *const src, const size_t length,
                   const uint8_t value);

/**
 * @brief Set the source's bytes to zero.
 *
 * Takes a pointer to a memory location, a length in bytes and zero's out all
 * of the memory.
 *
 * @param src Pointer to the source block of memory
 * @param length The number of bytes to zero
 *
 * @return The pointer to the source
 */
uint8_t *my_memzero(uint8_t *const src, const size_t length);

/**
 * @brief Reverse the source bytes.
 *
 * Takes a pointer to a memory location and a length in bytes and reverse the
 * order of all of the bytes.
 *
 * @param src Pointer to the source block of memory
 * @param length The number of bytes to reverse
 *
 * @return The pointer to the source
 */
uint8_t *my_reverse(uint8_t *const src, const size_t length);

/**
 * @brief Reserve given number of words.
 *
 * Take a number of words to allocate in dynamic memory.
 *
 * @param length The size, in bytes, to reserve
 *
 * @return A NULL pointer if allocation unsuccessful, the pointer to the
 *          reserved block if successful
 */
int32_t *reserve_words(const size_t length);

/**
 * @brief Free the given memory.
 *
 * Free a dynamic memory allocation by the provided pointer src.
 *
 * @param src The pointer to be freed
 *
 * @return void
 */
void free_words(const uint32_t *const src);

#endif /* __MEMORY_H__ */
