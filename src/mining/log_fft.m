function [y, x] = log_fft(x, n)

	f = abs(fft(x, n));
	y = log( f(1:n/2) );
	x = log(1:n/2);

end
