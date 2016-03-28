__kernel void poly(                                                     
	__global float* input,                                              
	__global float* output)                                           
{                                                                      
   int i = get_global_id(0);                                             
   output[i] = (input[i]*(input[i]*(16*input[i]*input[i]-20)*input[i]+5));                              
}                                                                      

