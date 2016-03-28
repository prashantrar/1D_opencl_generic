# 1D_opencl_generic
Generic tutorial and host code walkthrough for opencl kernels with 1D inputs and outputs

##1)Introduction
This repo is to give users a general idea of how to write opencl host as well kernel code for 1D array operations. There is a basic 1D Array template inside the "1D_Template" folder and the same style of writing host code and kernel code has been used to prepare the two other examples. 

##2)How to use this repo
This repo is meant for beginner users with a basic understanding of OpenCL. If you have no idea od opencl please do some reading and come back here. If you are struggling to get the proper host code and kernel code that is portable across multiple devices then this is the best place for you.

The OpenCL code written here is **NOT OPTIMIZED FOR EVERY DEVICE** its a naive implementation that is targeted at **CODE PORTABILITY**. The opencl code examples should run on most platforms and SDK's, they have been tested with INTEL SDK, APPLE SDK and even POCL(Check makefiles for instructions).

##3)Compilation instructions
There are makefiles included for code compilation in ubuntu Linux with intel/amd opencl SDK, APPLE SDK and POCL, please edit the makefiles if necesary they are very naive and straight forward makefiles. You must know how to compile your OpenCL code on a terminal in Ubuntu or Mac in case the makefiles donot work for you, sorry **no support for windows**. If you wish to run these OpenCL codes on windows you are free to use the source and set it up however necessary. This is a code walkthrough repo, its only meant to give a generic structure to certain types of OpenCL applications to understand and code better.

##4)Use of GPU
In each host code there is a line that specifies "int gpu = 0;" if you make the variable gpu = 1 then the opencl code will look for a GPU in your platform. People with devices having multiple platforms you must be careful here as the code will select the first platform on your device to create the opencl context so if you have your GPU on another platform please edit the code to make it detect your platform, its simple, just refer to any OpenCL tutorial, or check out the example on my other repo here @https://github.com/umaurmi/OPENCL_EXAMPLES_ZEDBOARD/tree/master/devquery to see how to query your device for platform info.

##5)Optimization
In order to optimize this generic and portable implementation to your platform you must understand the internals of your architecture and the OpenCL programming model in order to extract the maximum compute power from your device.
