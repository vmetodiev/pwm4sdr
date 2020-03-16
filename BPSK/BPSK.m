
Anhang 1: Model von BPSK im GNU Octave


# Represent bits as square wave in time
1;
function retval = bits_to_digital_signal(bits, how_many_times)
  k=1;
  for i = 1:length(bits)
     for j = 1:(how_many_times)
        e(k)=bits(i);
        k++;
      end
  end
  retval = e;
  k=0;
endfunction


## Generate a cosine wave
#2;
#function retval = generate_cosine_wave(period, len)
#  frequency=1/period;
#  t=linspace(1,len,len);
#  y=1*cos(2*pi*frequency*t + 0);
#  retval = y;
#endfunction


# Cut negative
3;
function retval = cut_negative(wave)
  for i = 1:length(wave)
    if wave(i) < 0
      wave(i) = 0;
    endif
  endfor
  retval = wave;
endfunction


# Multiply wave
4;
function retval = multiply_vectors(n,m)
  # Make sure vectors are equal in length
  if (length(n) != length(m))
    return;
  endif
  
  for i = 1:length(n)
    new(i) = n(i) * m(i);
  endfor
  retval = new;
endfunction


# Generate a sine wave
#5;
#function retval = generate_sine_wave(period, len)
#  frequency=1/period;
#  t=linspace(1,len,len);
#  y=1*sin(2*pi*frequency*t + 0);
#  retval = y;
#endfunction


# Inverse wave
6;
function retval = inverse_negative(wave)
  for i = 1:length(wave)
    if wave(i) < 0
      wave(i) = wave(i) * (-1);
    endif
  endfor
  retval = wave
endfunction


# I Channel wave
7;

#
#function retval = i_channel(period, len)
#  frequency = 1/period;
#  t=linspace(1, len, len);
#  y=cos(2*pi*frequency*t);
#  retval = y;
#endfunction
#

#
# Q Channel wave
#8;
#function retval = q_channel(period, len)
#  frequency = 1/period;
#  t=linspace(1, len, len);
#  y = (-1) * sin(2*pi*frequency*t);
#  retval = y;
#endfunction
#

# Sum waves
9;
function retval = sum_vectors(n,m)
  if (length(n) != length(m))
    return;
  endif
  
  for i = 1:length(n)
    new(i) = n(i) + m(i);
  endfor
  retval = new;
endfunction

#
# Demodulation of I channel
#10;
#function retval = i_channel_demod(period, len)
#  t = linspace(0, 1, len);
#  y = 2 * cos(2*pi*frequency*t); 
#  retval = y;
#endfunction
#

#
# Demodulation of Q channel
#11;
#function retval = q_channel_demod(period, len)
#  frequency = 1/period;
#  t = linspace(1, len, len);
#  y = (-2) * sin(2*pi*frequency*t);
#  retval = y;
#endfunction
#

# Raised-Cosine
12;
function retval = raised_cosine(alpha, period)
  T = period/2;
  for t=1:period
    y(t)=(sin(pi*t/T)/(pi*t/T))*(cos(pi*alpha*t/T)/(1-4*alpha^2*t^2/T^2));
  endfor
  right = y;
  left = fliplr(right);
  retval = [ left right ];
endfunction


# Raised cosine wave
13;
function retval = raised_cosine_wave(bps, raised_cosine)
  wave = []
  for i = 1:bps
    wave = [ wave raised_cosine]
  endfor
  retval = wave;
endfunction  
  

# Generate a sine wave
14;
function retval = generate_sine_wave(frequency, len)
  t=linspace(0, 1, len);
  y=1*sin(2*pi*frequency*t + 0);
  retval = y;
endfunction

# I channel modulation
15;
function retval = i_channel_carrier(frequency, len)
  t=linspace(0, 1, len);
  y=cos(2*pi*frequency*t);
  retval = y;
endfunction
 

# Q channel modulation
16;
function retval = q_channel_carrier(frequency, len)
  t=linspace(0, 1, len); 
  y = (-1) * sin(2*pi*frequency*t);
  retval = y;
endfunction

# Demodulation of I channel
17;
function retval = i_channel_demod(frequency, len)
  t=linspace(0, 1, len);
  y = 2 * cos(2*pi*frequency*t); 
  retval = y;
endfunction

# Demodulation of Q channel
18;
function retval = q_channel_demod(frequency, len)
  t = linspace(0, 1, len);
  y = (-2) * sin(2*pi*frequency*t);
  retval = y;
endfunction


# Zeroes to negative one
19; 
function retval = zeros_to_negative_ones(array)
  curr=array;
  newarr = [];
  for i = 1:length(curr)
    if (curr(i) <= 0)
      newarr(i) = -1;
    else
      newarr(i) = curr(i);
    endif
  endfor
  retval = newarr;
endfunction


# Bessel filter
20;
function retval = bessel_3rd(array)
  bessel = [];
  for i = 1:length(array)
    s = array(i);
    bessel(i) = s^3 + 6*s^2 + 15*s + 15;
  endfor
  retval = bessel;
endfunction

# To square
21;
function retval = to_square(border, array)
  new_array = [];
  for i = 1:length(array)
    if array(i) <= border
      new_array(i) = 0;
    else
      new_array(i) = 1;
    endif
  endfor
  retval = new_array;
endfunction

# Cut frequency
22;
function retval = cut_with_left_and_right_offset(offset, array)
  new_array = array;
  # Left and right
  for i = 1:offset
    new_array(i) = 0;
    new_array(length(new_array)-i) = 0;
  endfor
  # And the border ones, because it cannot be indexed in the loop starting from 1
  new_array(length(new_array)) = 0;
  retval = new_array;
endfunction 

# Generate a sine wave
23;
function retval = generate_cosine_wave(frequency, len)
  t=linspace(0, 1, len);
  y=1*cos(2*pi*frequency*t + 0);
  retval = y;
endfunction

###################################################


# Usage:

# How many bits per second
bps=8;

# Bits as array
bits_i = [ 1, 0, 1, 0, 1, 0, 1, 1 ];
bits_i = zeros_to_negative_ones(bits_i);
bits_q = [ 0, 0, 0, 0, 0, 0, 0, 0 ];
bits_q = zeros_to_negative_ones(bits_q);

# Elements on the X axis, that we used for plotting
x_axis_element_count=1000;

# Represent bits as digital signal on the X axis
repeat=floor(x_axis_element_count/length(bits_i));
bits_as_digital_signal_i = bits_to_digital_signal(bits_i, repeat);
#plot(bits_as_digital_signal_i);
bits_as_digital_signal_q = bits_to_digital_signal(bits_q, repeat);

# Calculate the period of the '0'/'1' state of the bit
digital_state_period = floor((1/bps) * x_axis_element_count);

# Raised cosine filter
alpha = 0.75;
raised_cos = raised_cosine(alpha, digital_state_period/2);
raised_cos_wave = raised_cosine_wave(bps, raised_cos);

# Filtered digital
bits_as_digital_signal_i=bits_as_digital_signal_i(1:length(raised_cos_wave));
bits_as_digital_signal_q=bits_as_digital_signal_q(1:length(raised_cos_wave));

filtered_digital_i = bits_as_digital_signal_i.*raised_cos_wave;
filtered_digital_q = bits_as_digital_signal_q.*raised_cos_wave;

# Amplitude modulation
am_symbols = 4;
f_digital = bps;
f_carrier = am_symbols * f_digital;
sine_wave = generate_sine_wave(f_carrier, length(bits_as_digital_signal_i));
am_modulated_i = sine_wave.*filtered_digital_i;
am_modulated_q = sine_wave.*filtered_digital_q;

# I/Q modulator
i_carrier=i_channel_carrier(f_carrier, length(filtered_digital_i));
q_carrier=q_channel_carrier(f_carrier, length(filtered_digital_q));

i_signal = filtered_digital_i.*i_carrier;
q_signal = filtered_digital_q.*q_carrier;

iq_modulator_data = i_signal.+q_signal;

# Filter before transmission
#iq_fft=fft(iq_modulator_data);
#plot(abs(iq_fft));
#iq_fft(64:length(iq_fft))=0;
#plot(abs(iq_fft));

#iq_modulator_data_new=ifft(iq_fft);
#plot(real(iq_modulator_data_new));

# I/Q de-modulator
i_carrier_demod = i_channel_demod(f_carrier, length(filtered_digital_i));
q_carrier_demod = q_channel_demod(f_carrier, length(filtered_digital_q));

i_signal_demod = iq_modulator_data.*i_carrier_demod;
q_signal_demod = iq_modulator_data.*q_carrier_demod;


####
i_demod_fft = fft(i_signal_demod);
filtered = i_demod_fft;
filtered(30:length(filtered)-30) = 0;
i_reconstructed=ifft(filtered);
time=linspace(0,1,length(i_reconstructed))
plot(time, i_reconstructed);



