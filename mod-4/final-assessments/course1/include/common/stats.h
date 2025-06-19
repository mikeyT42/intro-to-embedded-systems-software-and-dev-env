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
 * @file stats.h
 * @brief The header file for the statistics functions.
 *
 * All of the functions for this assignment will live here. The functions are,
 * in general, for calculating data and for printing data.
 *
 * @author Michael Torres
 * @date 5/14/25
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/**
 * @brief Find array's median.
 *
 * This function, with read-only access, gets the median value stored in a
 * sorted array. This pre-requisite is important.
 *
 * @param arr A read-only pointer to a sorted array.
 * @param len A read-only length of the pointed to array.
 *
 * @return The median value.
 */
unsigned char find_median(const unsigned char *const arr,
                          const unsigned int len);

/**
 * @brief Find array's mean.
 *
 * This function, with read-only access, gets the mean value stored in an array.
 *
 * @param arr A read-only pointer to an array.
 * @param len A read-only length of the pointed to array.
 *
 * @return The mean value.
 */
unsigned char find_mean(const unsigned char *const arr, const unsigned int len);

/**
 * @brief Find array's maximum.
 *
 * This function, with read-only access, gets the maximum value stored in a
 * sorted array. This pre-requisite is important.
 *
 * @param arr A read-only pointer to a sorted array.
 * @param len A read-only length of the pointed to array.
 *
 * @return The maximum value.
 */
unsigned char find_maximum(const unsigned char *const arr,
                           const unsigned int len);

/**
 * @brief Find array's minimum.
 *
 * This function, with read-only access, gets the minimum value stored in a
 * sorted array. This pre-requisite is important.
 *
 * @param arr A read-only pointer to a sorted array.
 * @param len A read-only length of the pointed to array.
 *
 * @return The maximum value.
 */
unsigned char find_minimum(const unsigned char *const arr,
                           const unsigned int len);

/**
 * @brief Sort a given array from largest to smallest.
 *
 * This function sorts a given array in-place from largest to smallest using
 * quick sort.
 *
 * @param arr A pointer to an array.
 * @param len A read-only length of the pointed to array.
 */
void sort_array(unsigned char *const arr, const unsigned int len);

/**
 * @brief The recursive function that performs the quicksort procedure.
 *
 * This function is the "helper" recursive function used when a sort API of
 * just the array and length is used. This function calls the partitioning
 * function.
 *
 * @param arr A pointer to an array.
 * @param low The current lowest index.
 * @param high The current highest index.
 */
void quicksort(unsigned char *const arr, const int low, const int high);

/**
 * @brief The partitioning function that splits down the array.
 *
 * This function partitions the given array around a pivot point and moves
 * the data around that point. The pivot in this particular implementation is
 * chosen to be the value at the current highest index; arr[high].
 *
 * @param arr A pointer to an array.
 * @param low The current lowest index.
 * @param high The current highest index.
 *
 * @return The index of the new pivoting index.
 */
int partition(unsigned char *const arr, const int low, const int high);

/**
 * @brief Print the statistics values to stdout.
 *
 * This function prints all of the collected statistics from the input data.
 *
 * @param median The median of the data-set.
 * @param mean The mean of the data-set.
 * @param max The max of the data-set.
 * @param min The min of the data-set.
 */
void print_statistics(const unsigned char median, const unsigned char mean,
                      const unsigned char max, const unsigned char min);

/**
 * @brief Print the array values to stdout.
 *
 * This function prints all of the values in the given array.
 *
 * @param arr A read-only pointer to an array.
 * @param len A read-only length of the pointed to array.
 */
void print_array(const unsigned char *const arr, const unsigned int len);

#endif /* __STATS_H__ */
