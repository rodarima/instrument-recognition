function process_dir_wav(dir_txt, n, t, s)

	d = textread(dir_txt, '%s');

	len = length(d);

	printf('Loading %d wav files...\n', len);

	for i=1:len,
		file = d{i};
		printf('Loading %d/%d: %s...\n', i, len, file);
		r = process_wav(file, n, t, s);
		ext = sprintf('.%d-%f-%d.csv', n, t, s);
		out = strcat(file, ext)
		printf('Writing to %s\n', out);
		csvwrite(out, r);
	end;

end
