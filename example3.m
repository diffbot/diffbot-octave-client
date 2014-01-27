% enter the token you received when you signed up on http://www.diffbot.com/
global DIFFBOT_TOKEN = "...";

% Crawl API URL
api = "http://api.diffbot.com/v2/crawl";

% Create a basic crawl job
[data success message] = diffbot(api, 
		"name", "sample_crawl",
		"seeds", "http://www.diffbot.com",
		"apiUrl", "http://api.diffbot.com/v2/article")