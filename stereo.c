// This is a simple stereo in/out file
// The audio is read in from the source and output without any modification

#include "L138_LCDK_aic3106_init.h"
#include "math.h"
#include "biquad_coefficients.cof"

int16_t Linput,Rinput;

AIC31_data_type codec_data;

	double leftoutput = 0; // output variable
	double w[2] = {0};
	float wn,yn;   // intermediate and output values in each stage
	float filterslider = 1;
	float outputgain = 1;

interrupt void interrupt4(void) // interrupt service routine
{
//input the actual data
  codec_data.uint = input_sample();
//here's where I set the input values to variables
    Linput = codec_data.channel[LEFT];
    Rinput = codec_data.channel[RIGHT];
//this filters the input signal using a biquad architecture

if(filterslider==0){
	wn = Linput - a[1]*w[0] - a[2]*w[1];
	yn = b[0]*wn + b[1]*w[0] + b[2]*w[1];
	w[1] = w[0];
	w[0] = wn;

	leftoutput = yn;
}
else {
	wn = Linput - c[1]*w[0] - c[2]*w[1];
	yn = d[0]*wn + d[1]*w[0] + d[2]*w[1];
	w[1] = w[0];
	w[0] = wn;

	leftoutput = yn;
}

//sets eqd version on left channel and original left sound on right channel
    codec_data.channel[LEFT] =  leftoutput*outputgain;
    codec_data.channel[RIGHT] = Linput*outputgain;

//final output stage
  output_sample(codec_data.uint);
  return;
}

int main(void)
{
	  L138_initialise_intr(FS_44100_HZ,ADC_GAIN_0DB,DAC_ATTEN_0DB,LCDK_LINE_INPUT);
  while(1);
}


