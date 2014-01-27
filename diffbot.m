% process a URL and return it's contents as a structure
function [data success message] = diffbot(api_url, varargin) 
	global DIFFBOT_TOKEN;
	data = struct();
	
	%set parameters
	params = {"token", DIFFBOT_TOKEN};
	params = [params varargin];

	% make api call
	[s success message] = urlread (api_url, "get", params);

	if (success)
		% save json string to file
		filename = "result.txt";
		fid = fopen (filename, "w");
		fputs (fid, s);
		fclose (fid);
		
		% read json into a structure using JSONlab
		data = loadjson(filename);
	endif
endfunction