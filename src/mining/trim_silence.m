function [y] = trim_silence(x, t)

	% Quita el silencio de minimo t

	a = find(abs(x) > t);
	s = a(1);
	e = a(end);
	y = x(s:e);
end
