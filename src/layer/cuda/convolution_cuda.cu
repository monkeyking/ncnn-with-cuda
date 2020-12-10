//
// Author: Marko Atanasievski
//
// Copyright (C) 2020 TANCOM SOFTWARE SOLUTIONS Ltd. All rights reserved.
//
// Licensed under the BSD 3-Clause License (the "License"); you may not use this file except
// in compliance with the License. You may obtain a copy of the License at
//
// https://opensource.org/licenses/BSD-3-Clause
//
// Unless required by applicable law or agreed to in writing, software distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//



#include <cuda.h>
#include <cuda_runtime.h>
#include <cuda_runtime_api.h>

#include "cuda_util.h"

#include <iostream>

#include "mat.h"

#include "convolution_cuda.h"


__global__ void gpu_convolution_forward(const unsigned char* a_input, const ncnn::CudaMatInfo a_info, unsigned char* output, const ncnn::CudaMatInfo output_info) {
    const int column = blockIdx.x * blockDim.x + threadIdx.x;
    const int row = blockIdx.y * blockDim.y + threadIdx.y;
    const int channel = blockIdx.z * blockDim.z + threadIdx.z;

    if (column >= a_info.w || row >= a_info.h || channel >= a_info.c)
    {
        return;
    }

}



namespace ncnn {

int convolution_cuda_forward(const CudaMat& bottom_blob, CudaMat& top_blob)
{

    return 0;
}


}