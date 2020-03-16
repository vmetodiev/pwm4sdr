clear
history -c

samples_file=fopen('/home/vmetodiev/Development/SDR/uhd/host/build/examples/usrp_samples.dat', 'rb');

data=fread(samples_file, 'int16');

data_i = data(1:2:end);
data_q = data(2:2:end);

data_i_cutoff=data_i(1:3500);
data_q_cutoff=data_i(1:3500);

time=linspace(0,1,3500);

plot(time, data_i_cutoff)