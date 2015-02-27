# Copyright Anjul Kumar Tyagi
# Developed on 11/25/2014
#
#
clear all;
close all;
scale = char("E","F","F#","G","G#","A","A#","B","C","C#","D","D#"); # All the 12 nodes of each scale
freq = zeros(4,12); # Columns are the 12 nodes and their corresponding rows are the starting frequencies of these nodes at different scales 
freq(1,6) = 58.27;
freq(2,6) = 116.541;
freq(3,6) = 233.082;
freq(1,7) = 61.735;
freq(2,7) = 123.471;
freq(3,7) = 245.942;
freq(1,8) = 65.406;
freq(2,8) = 130.813;
freq(3,8) = 261.626;
freq(1,9) = 69.296;
freq(2,9) = 138.591;
freq(3,9) = 277.183;
freq(1,10) = 73.416;
freq(2,10) = 146.832;
freq(3,10) = 293.665;
freq(1,11) = 77.782;
freq(2,11) = 155.563;
freq(3,11) = 311.127;
freq(1,12) = 82.407;
freq(2,12) = 164.841;
freq(3,12) = 327.628;
freq(1,1) = 43.654;
freq(2,1) = 87.307;
freq(3,1) = 174.614;
freq(4,1) = 349.228;
freq(1,2) = 46.249;
freq(2,2) = 92.499;
freq(3,2) = 184.997;
freq(4,2) = 369.994;
freq(1,3) = 48.999;
freq(2,3) = 97.999;
freq(3,3) = 195.998;
freq(1,4) = 51.913;
freq(2,4) = 103.826;
freq(3,4) = 207.652;
freq(1,5) = 55;
freq(2,5) = 108;
freq(3,5) = 220;
ans = zeros(8000); # taking the 8000 samples of the input sound
system ("clear");
num = input ("String number or 0 to exit: ?");
while (num != 0)
	string = zeros(1,8000);
	sur = char(2);
	if num == 1	
		string(179:364) = 1; # We have to check the fft for maximum frequency only in the range of the string
		a = record(1,4000);
		afft = fft(a);
		a_mag = abs(afft);
		b = a_mag'*diag(string);
		a_mag = b';
		m = max(a_mag);
		#plot(a_mag);
		for i = 179:364
			if a_mag(i) == m(1)
				temp = i;
				i
			endif
		endfor
		jump = 0;
		for i = 1:4
			for j = 1:11
				%freq(i,j)
				if j == 1 && i!= 1 && temp<freq(i,j) && temp>freq(i-1,12)
					%scale(j,:)
					%display "i and j in 1";
					sur = scale(j,:);
					jump = 1;
					break;
				elseif temp>freq(i,j) && temp<freq(i,j+1)
					%scale(j,:)
					%display "i and j in 2";
					sur = scale(j+1,:);
					jump = 1;
					break;
				endif
			endfor
			if jump == 1
				break;
			endif
		endfor 
		display "********************************************************";
		if temp <= 330 && temp >=328
			display "In Tune"
			sur
		elseif temp > 330
			display "Tune Down"
			sur
		elseif temp < 328
			display "Tune up"
			sur
		endif
		display "********************************************************";					
	endif
	if num == 2
		string(177:286) = 1;	
		a = record(1,8000);
		afft = fft(a);
		a_mag = abs(afft);
		b = a_mag'*diag(string);
		a_mag = b';
		m = max(a_mag);
		#plot(a_mag);
		for i = 177:286
			if a_mag(i) == m(1)
				temp=i;
				i
			endif
		endfor
		jump = 0;
		for i = 1:4
			for j = 1:11
				%freq(i,j)
				if j == 1 && i!= 1 && temp<freq(i,j) && temp>freq(i-1,12)
					%scale(j,:)
					%display "i and j in 1";
					sur = scale(j,:);
					jump = 1;
					break;
				elseif temp>freq(i,j) && temp<freq(i,j+1)
					%scale(j,:)
					%display "i and j in 2";
					sur = scale(j+1,:);
					jump = 1;
					break;
				endif
			endfor
			if jump == 1
				break;
			endif
		endfor
		display "********************************************************";
		if temp <= 248 && temp >=246
			display "In Tune"
			sur
		elseif temp > 248
			display "Tune Down"
			sur
		elseif temp < 246
			display "Tune up"
			sur
		endif
		display "********************************************************";
	endif
	if num == 3
		string(100:235) = 1;	
		a = record(1,8000);
		afft = fft(a);
		a_mag = abs(afft);
		b = a_mag'*diag(string);
		a_mag = b';
		m = max(a_mag);
		#plot(a_mag);
		for i = 100:235
			if a_mag(i) == m(1)
				temp=i;
				i
			endif
		endfor
		jump = 0;
		for i = 1:4
			for j = 1:11
				%freq(i,j)
				if j == 1 && i!= 1 && temp<freq(i,j) && temp>freq(i-1,12)
					%scale(j,:)
					%display "i and j in 1";
					sur = scale(j,:);
					jump = 1;
					break;
				elseif temp>freq(i,j) && temp<freq(i,j+1)
					%scale(j,:)
					%display "i and j in 2";
					sur = scale(j+1,:);
					jump = 1;
					break;
				endif
			endfor
			if jump == 1
				break;
			endif
		endfor
		display "********************************************************";
		if temp <= 197 && temp >=195
			display "In Tune"
			sur
		elseif temp > 197
			display "Tune Down"
			sur
		elseif temp < 195
			display "Tune up"
			sur
		endif
		display "********************************************************";
	endif	
	if num == 4
		string(75:186) = 1;	
		a = record(1,8000);
		afft = fft(a);
		a_mag = abs(afft);
		b = a_mag'*diag(string);
		a_mag = b';
		m = max(a_mag);
		#plot(a_mag);
		for i = 75:186
			if a_mag(i) == m(1)
				temp=i;
				i
			endif
		endfor
		jump = 0;
		for i = 1:4
			for j = 1:11
				%freq(i,j)
				if j == 1 && i!= 1 && temp<freq(i,j) && temp>freq(i-1,12)
					%scale(j,:)
					%display "i and j in 1";
					sur = scale(j,:);
					jump = 1;
					break;
				elseif temp>freq(i,j) && temp<freq(i,j+1)
					%scale(j,:)
					%display "i and j in 2";
					sur = scale(j+1,:);
					jump = 1;
					break;
				endif
			endfor
			if jump == 1
				break;
			endif
		endfor
		display "********************************************************";
		if temp <= 148 && temp >=146
			display "In Tune"
			sur
		elseif temp > 148
			display "Tune Down"
			sur
		elseif temp < 146
			display "Tune up"
			sur
		endif
		display "********************************************************";
	endif
	if num == 5
		string(43:150) = 1;	
		a = record(1,8000);
		afft = fft(a);
		a_mag = abs(afft);
		b = a_mag'*diag(string);
		a_mag = b';
		m = max(a_mag);
		#plot(a_mag);
		for i = 43:150
			if a_mag(i) == m(1)
				temp=i;
				i
			endif
		endfor
		jump = 0;
		for i = 1:4
			for j = 1:11
				%freq(i,j)
				if j == 1 && i!= 1 && temp<freq(i,j) && temp>freq(i-1,12)
					%scale(j,:)
					%display "i and j in 1";
					sur = scale(j,:);
					jump = 1;
					break;
				elseif temp>freq(i,j) && temp<freq(i,j+1)
					%scale(j,:)
					%display "i and j in 2";
					sur = scale(j+1,:);
					jump = 1;
					break;
				endif
			endfor
			if jump == 1
				break;
			endif
		endfor
		display "********************************************************";
		if temp <= 111 && temp >=109
			display "In Tune"
			sur
		elseif temp > 111
			display "Tune Down"
			sur
		elseif temp < 109
			display "Tune up"
			sur
		endif
		display "********************************************************";
	endif	
	if num == 6
		string(40:122) = 1;	
		a = record(1,8000);
		afft = fft(a);
		a_mag = abs(afft);
		b = a_mag'*diag(string);
		a_mag = b';
		m = max(a_mag);
		#plot(a_mag);
		for i = 40:122
			if a_mag(i) == m(1)
				temp=i;
				i
			endif
		endfor
		jump = 0;
		for i = 1:4
			for j = 1:11
				%freq(i,j)
				if j == 1 && i!= 1 && temp<freq(i,j) && temp>freq(i-1,12)
					%scale(j,:)
					%display "i and j in 1";
					sur = scale(j,:);
					jump = 1;
					break;
				elseif temp>freq(i,j) && temp<freq(i,j+1)
					%scale(j,:)
					%display "i and j in 2";
					sur = scale(j+1,:);
					jump = 1;
					break;
				endif
			endfor
			if jump == 1
				break;
			endif
		endfor
		display "********************************************************";
		if temp <= 83 && temp >=81
			display "In Tune"
			sur
		elseif temp > 83
			display "Tune Down"
			sur
		elseif temp < 81
			display "Tune up"
			sur
		endif
		display "********************************************************";
	endif
	num = input ("String number or 0 to exit: ?");
	system("clear");
endwhile
