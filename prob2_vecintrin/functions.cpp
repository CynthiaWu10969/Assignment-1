#include "CMU418intrin.h"
#include "logger.h"
#include <algorithm>
#include <math.h>
#include <stdio.h>
using namespace std;

void absSerial(float *values, float *output, int N) {
    for (int i = 0; i < N; i++) {
        float x = values[i];
        if (x < 0) {
            output[i] = -x;
        } else {
            output[i] = x;
        }
    }
}

// implementation of absolute value using 15418 instrinsics
void absVector(float *values, float *output, int N) {
    __cmu418_vec_float x;
    __cmu418_vec_float result;
    __cmu418_vec_float zero = _cmu418_vset_float(0.f);
    __cmu418_mask maskAll, maskIsNegative, maskIsNotNegative;

    // Note: Take a careful look at this loop indexing.  This example
    // code is not guaranteed to work when (N % VECTOR_WIDTH) != 0.
    // Why is that the case?
    for (int i = 0; i < N; i += VECTOR_WIDTH) {

        // All ones
        maskAll = _cmu418_init_ones();

        // All zeros
        maskIsNegative = _cmu418_init_ones(0);

        // Load vector of values from contiguous memory addresses
        _cmu418_vload_float(x, values + i, maskAll); // x = values[i];

        // Set mask according to predicate
        _cmu418_vlt_float(maskIsNegative, x, zero, maskAll); // if (x < 0) {

        // Execute instruction using mask ("if" clause)
        _cmu418_vsub_float(result, zero, x, maskIsNegative); //   output[i] = -x;

        // Inverse maskIsNegative to generate "else" mask
        maskIsNotNegative = _cmu418_mask_not(maskIsNegative); // } else {

        // Execute instruction ("else" clause)
        _cmu418_vload_float(result, values + i, maskIsNotNegative); //   output[i] = x; }

        // Write results back to memory
        _cmu418_vstore_float(output + i, result, maskAll);
    }
}

// Accepts an array of values and an array of exponents
// For each element, compute values[i]^exponents[i] and clamp value to
// 4.18.  Store result in outputs.
// Uses iterative squaring, so that total iterations is proportional
// to the log_2 of the exponent
void clampedExpSerial(float *values, int *exponents, float *output, int N) {
    for (int i = 0; i < N; i++) {
        float x = values[i];
        float result = 1.f;
        int y = exponents[i];
        float xpower = x;
        while (y > 0) {
            if (y & 0x1) { 
                result *= xpower;
                if (result > 4.18f) {
                    result = 4.18f;
                    break;
                }
            }
            xpower = xpower * xpower;
            y >>= 1;
        }
        output[i] = result;
    }
}

void clampedExpVector(float *values, int *exponents, float *output, int N) {
    // TODO: Implement your vectorized version of clampedExpSerial here
    //  ...

    __cmu418_vec_float x;
    __cmu418_vec_float result;
    __cmu418_vec_int y;
    __cmu418_vec_float xpower;
    __cmu418_mask maskAll, maskYPositive, maskYOne, maskClamp;
    __cmu418_vec_float zeroF = _cmu418_vset_float(0.f);
    __cmu418_vec_int zeroI = _cmu418_vset_int(0);
    __cmu418_vec_int oneI = _cmu418_vset_int(1);
    __cmu418_vec_float clamps = _cmu418_vset_float(4.18f);
    __cmu418_vec_int tempV;
    __cmu418_mask maskStore;

    for (int i = 0; i < N; i += VECTOR_WIDTH){

        if (i + VECTOR_WIDTH >= N){
            maskStore = _cmu418_init_ones(N - i);
        } else{
            maskStore = _cmu418_init_ones();
        }

        maskAll = _cmu418_init_ones(min(VECTOR_WIDTH, N - i));
        maskYPositive = _cmu418_init_ones(0);
        maskYOne = _cmu418_init_ones();
        maskClamp = _cmu418_init_ones(0);

        // load from memory to vector
        _cmu418_vload_float(x, values + i, maskAll);
        _cmu418_vload_int(y, exponents + i, maskAll);
        _cmu418_vload_float(xpower, values + i, maskAll);

        // set the result to a vector of all ones
        result = _cmu418_vset_float(1.f);

        // check for positive y's
        _cmu418_vgt_int(maskYPositive, y, zeroI, maskAll);

        //maskStore = _cmu418_mask_and(maskYPositive, maskStore);

        while (_cmu418_cntbits(maskYPositive) > 0){
            // check for y's that &0x1 is true
            _cmu418_vbitand_int(tempV, y, oneI, maskYPositive);

            _cmu418_vgt_int(maskYOne, tempV, zeroI, maskYPositive);

            maskYOne = _cmu418_mask_and(maskYOne, maskYPositive);

            // calculation for result for vector lanes that satisfy
            _cmu418_vmult_float(result, result, xpower, maskYOne);
            // result *= xpower;

            // set the clamp lanes for later store
            _cmu418_vgt_float(maskClamp, result, clamps, maskYOne);

            // set the results for those clamped
            _cmu418_vset_float(result, 4.18f, maskClamp);
            // result = 4.18f for those clamped

            __cmu418_mask maskNotClamped = _cmu418_mask_not(maskClamp);
            maskYPositive = _cmu418_mask_and(maskNotClamped, maskYPositive);

            // xpower = xpower * xpower
            _cmu418_vmult_float(xpower, xpower, xpower, maskYPositive);

            // shift y to the right
            _cmu418_vshiftright_int(y, y, oneI, maskYPositive);

            // check for positive y's
            _cmu418_vgt_int(maskYPositive, y, zeroI, maskYPositive);
        }

        // store to mem
        _cmu418_vstore_float(output + i, result, maskStore);

        addUserLog("vec\n");

    }
}

float arraySumSerial(float *values, int N) {
    float sum = 0;
    for (int i = 0; i < N; i++) {
        sum += values[i];
    }

    return sum;
}

// Assume N % VECTOR_WIDTH == 0
// Assume VECTOR_WIDTH is a power of 2
float arraySumVector(float *values, int N) {
    // TODO: Implement your vectorized version here
    // ...
    return 0.f;
}
