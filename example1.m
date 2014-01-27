% enter the token you received when you signed up on http://www.diffbot.com/
global DIFFBOT_TOKEN = "...";

% Analyze API URL
api = "http://api.diffbot.com/v2/analyze";

% url to analyze
url = "http://venturebeat.com/2013/11/22/diffbot-and-semantria-join-to-find-and-parse-the-important-text-on-the-net-exclusive/";

% perform basic API call
data = diffbot(api, "url", url);

% display result
disp(data.type);
