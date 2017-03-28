code = session:getVariable("code");
session:execute("sched_hangup", "+45");
session:sleep(1000);
session:execute("playback","your_code_is.wav");
session:execute("say", "zh number iterated "..code);
while (session:ready() == true) do
	session:execute("playback","please_remember.wav");
	session:execute("say", "zh number iterated "..code);
end

