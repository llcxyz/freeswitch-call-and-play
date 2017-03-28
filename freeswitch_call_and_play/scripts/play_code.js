session.answer();
code = session.getVariable("code");
console_log("code = "+code);
session.execute("sched_hangup", "+55");
session.execute("playback","sounds/your_code_is.wav");
session.execute("say", "en number iterated "+code);

