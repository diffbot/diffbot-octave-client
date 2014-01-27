% enter the token you received when you signed up on http://www.diffbot.com/
global DIFFBOT_TOKEN = "...";

% Article API URL
api = "http://api.diffbot.com/v2/article";

% url to analyze
url = "http://venturebeat.com/2013/11/22/diffbot-and-semantria-join-to-find-and-parse-the-important-text-on-the-net-exclusive/";

% basic call
data = diffbot(api, "url", url);

% specify fields, return additional values for error handling, and display images
[data success message] = diffbot(api, "url", url, "fields", "meta,querystring,images(*)");

if (success)
	disp(data.images)
else
	disp(message)
endif
