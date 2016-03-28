__kernel void fir4(                                                     
	__global float* input,                                              
	__global float* output)                                           
{                                                                     
   int i = get_global_id(0); 
   int j = 0;
   int coeff[4] = {5,7,5,7};
   /*for(j=0;j<4;j++)
   {
   	output[i] += coeff[j]*(input[i+4-j-1]);
   }*/
   //unrolled 
   output[i] += coeff[0]*(input[i+4-0-1]);
   output[i] += coeff[1]*(input[i+4-1-1]);
   output[i] += coeff[2]*(input[i+4-2-1]);
   output[i] += coeff[3]*(input[i+4-3-1]);                             
}  


__kernel void fir8(                                                     
	__global float* input,                                              
	__global float* output)                                           
{                                                                     
   int i = get_global_id(0); 
   int j = 0;
   int coeff[8] = {5,7,5,7,5,7,5,7};
   for(j=0;j<8;j++)
   {
   	output[i] += coeff[j]*(input[i+8-j-1]);
   }                                
}    


__kernel void fir12(                                                     
	__global float* input,                                              
	__global float* output)                                           
{                                                                     
   int i = get_global_id(0); 
   int j = 0;
   int coeff[12] = {5,7,5,7,5,7,5,7,5,7,5,7};
   for(j=0;j<12;j++)
   {
   	output[i] += coeff[j]*(input[i+12-j-1]);
   }                                
}                                                                     

