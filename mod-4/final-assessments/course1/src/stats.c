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
 * @file stats.c
 * @brief The program file to calculate statistics.
 *
 * This file is the "main" file for this project. It holds both the main
 * function along with the implementations of the headers in stats.h.
 *
 * @author Michael Torres
 * @date 5/15/25
 *
 */

#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

// -----------------------------------------------------------------------------
unsigned char find_median(const unsigned char *const arr,
                          const unsigned int len) {
  unsigned char median;
  // Is odd?
  if (len % 2 != 0) {
    const unsigned int middle = len / 2;
    median = arr[middle];
  } else {
    // Is even.
    const unsigned int top_half_low = len / 2;
    const unsigned int bottom_half_high = top_half_low - 1;
    // No rounding needed because of floating point truncation.
    median = (arr[bottom_half_high] + arr[top_half_low]) / 2;
  }

  return median;
}

// -----------------------------------------------------------------------------
unsigned char find_mean(const unsigned char *const arr,
                        const unsigned int len) {
  int sum = 0;
  for (int i = 0; i < len; i++)
    sum += arr[i];
  int mean = sum / len;
  return (unsigned char)mean;
}

// -----------------------------------------------------------------------------
unsigned char find_maximum(const unsigned char *const arr,
                           const unsigned int len) {
  return arr[0];
}

// -----------------------------------------------------------------------------
unsigned char find_minimum(const unsigned char *const arr,
                           const unsigned int len) {
  return arr[len - 1];
}

// -----------------------------------------------------------------------------
void print_statistics(const unsigned char median, const unsigned char mean,
                      const unsigned char max, const unsigned char min) {
  PRINTF("\nStatistics\n");
  PRINTF("%s%10s\n", "What", "Value");
  PRINTF("%-8s = %i\n", "Median", median);
  PRINTF("%-8s = %i\n", "Mean", mean);
  PRINTF("%-8s = %i\n", "Max", max);
  PRINTF("%-8s = %i\n", "Min", min);
}

// -----------------------------------------------------------------------------
void print_array(const unsigned char *const arr, const unsigned int len) {
#if defined(VERBOSE)
  PRINTF("[ ");
  for (int i = 0; i < len; i++) {
    PRINTF("%d", arr[i]);
    if (i < len - 1) {
      PRINTF(", ");
    }
  }
  PRINTF(" ]\n");
#endif
}

// -----------------------------------------------------------------------------
void sort_array(unsigned char *const arr, const unsigned int len) {
  if (len > 1)
    quicksort(arr, 0, len - 1);
}

// -----------------------------------------------------------------------------
void quicksort(unsigned char *const arr, const int low, const int high) {
  if (low < high) {
    const int pivot_index = partition(arr, low, high);
    quicksort(arr, low, pivot_index - 1);
    quicksort(arr, pivot_index + 1, high);
  }
}

// -----------------------------------------------------------------------------
int partition(unsigned char *const arr, const int low, const int high) {
  const unsigned char pivot = arr[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (arr[j] >= pivot) {
      i++;
      const unsigned char tmp = arr[i];
      arr[i] = arr[j];
      arr[j] = tmp;
    }
  }
  const unsigned char tmp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = tmp;

  return i + 1;
}
