# guitar-tuner-in-octave
This is a small code to implement guitar tuner program in octave.

It is implemented for spanish guitar and is based on the following concepts:
1. The Guitar has 6 strings named as: E, B, G, D, A, E correspondingly from 1 to 6.
2. The frequency range of 1st string is : 179-364 Hz and that of other strings is as:
   1st : 179-364 Hz
   2nd : 177-286 Hz
   3rd : 100-235 Hz
   4th : 075-186 Hz
   5th : 043-150 Hz
   6th : 040-122 Hz
3. Given these frequency ranges, each string has a particular set frequency which is the basic frequency of that string and guitar with all    	  the strings tuned at their basic frequencies is said to be set at the basic tuning.
4. The basic frequencies of the strings are as follows :
   1st : 329 Hz
   2nd : 247 Hz
   3rd : 196 Hz
   4th : 147 Hz
   5th : 110 Hz
   6th : 082 Hz
5. So basically, what we have to do is to input a sound signal from a guitar string, check its frequency by using the fft function i.e. (fast 	 fourier transform) in the frequency range of that string, and display the output that whether to tune up (tighten) that string, tune down 	(loosen) that string or the string is in tune i.e. at the right frequency.









