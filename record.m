## Copyright (C) 1995, 1996, 1997, 1998, 1999, 2000, 2003, 2004, 2005,
##               2006, 2007 John W. Eaton
##
## This file is part of Octave.
##
## And adapted again 11/25/2014 by Anjul Kumar Tyagi

function X = record (sec, sampling_rate)

  if (nargin == 1)
    sampling_rate = 8000;
  elseif (nargin != 2)
    print_usage ();
  endif

  file = tmpnam ();
  file= [file,".wav"];

  input ("Play the guitar and hit ENTER afterwards\n", 1);

  cmd = sprintf ("rec -c1 -r%d %s trim 0 %d",
                  sampling_rate, file, sec)

  system (cmd);

  X = wavread(file);

endfunction
