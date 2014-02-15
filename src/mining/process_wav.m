function [y, x] = process_wav(file, n, t, s)

	v = wavread(file);
	v = trim_silence(v, t);

	len = length(v);
	y1 = [];


	for i=1:s:(len-n),
		printf('%d / %d\n', i, len-n);
		[lf, x1] = log_fft(v(i:end), n);
		y1 = vertcat(y1, lf');
	end;

	y=y1;
	x=log(1:n/2);

end
