#!/bin/sh

# This dirty script eat td files :P
# https://github.com/tensorflow/tensorflow/tree/master/tensorflow/compiler/mlir/tensorflow/ir

sed -i '/let hasCanonicalizer = 1;/d' *.td
sed -i '/let hasFolder = 1;/d' *.td
sed -i '/StringRef GetOptimalLayout(const RuntimeDevices& devices);/d' *.td
sed -i '/LogicalResult UpdateDataFormat(StringRef data_format);/d' *.td
sed -i '/LogicalResult FoldOperandsPermutation(ArrayRef<int64_t> permutation);/d' *.td
