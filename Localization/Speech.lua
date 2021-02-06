-------------------------------------
--  ENGLISH VERSION --
-------------------------------------
local L = LibStub("AceLocale-3.0"):GetLocale(CryolysisData.AppName,true)
if not L then return end

function Cryolysis_Localization_Speech_En()

	L["CRYOLYSIS_TELEPORT_MESSAGE"] = {
		[1] = "I'm heading straight to <portal>! You can't stop the signal!",
		[2] = "Err...something's come up. I've got to be in <portal> like, NOW for another freaking meeting. Stupid 'Mage Meeting' and all that crap.",
		[3] = "Oh look! What's over there! *VANISH* Where'd I go? Buah hahaha. Actually, just look in <portal>, I'll probably be at the repair shop.",
		[4] = "Woohoo! I'm solo flying the <portal> express! Don't you wish you had three free hearthstones?",
		[5] = "PS, since I can 'port to <portal>, my hearth is set in Gadget :P",
		[6] = "Please don't enter my airspace. I'll be leaving for <portal> in about ten seconds.",
		[7] = "I hope I got the spell right self time! Last time, I was trying for <portal> but ended up scattered all over Azeroth!",
		[8] = "10 silver to get to <portal>?!  Well, it's better than waiting an hour",
		[9] = "I can think of two places I'd rather be than here.  Sadly, the most convenient one is <portal>",
	};
	L["CRYOLYSIS_PORTAL_MESSAGE"] = {
		[1] = "Step right up! Fly the friendly skies of <player>'s Air Service, now departing for <portal>.",
		[2] = "No promises that you'll actually get to <portal> by clicking self. Seriously.",
		[3] = "Chortle chortle, it's a portal!",
		[4] = "<player>'s Air service is proud to be servicing your one-way trip to <portal>. Please remember to close your eyes for the duration because it can be scary as hell.",
		[5] = "DISCLAIMER: I RECEIVED MY PORTAL LICENSE OFF THE AH. CLICK AT YOUR OWN RISK.",
		[6] = "Well, you cooouulllddd click self portal to <portal>, but are you sure you really want to go there? I mean, seriously, <portal>? WTF is wrong with you. Do you know who LIVES there?",
		[7] = "Tired of letting your arms get tired on your long trip back to <portal>? Just click here then, you lazy non-hearthing bums",
		[8] = "Entering through self dimensional gateway will get you to <portal>",
		[9] = "Okay, <player>, focus.  They want to go to <portal>, not the middle of the Maelstrom.  I can do self.. <portal>, not ocean.",
		[10] = "Why go to <portal> when we can bring <portal> here?  Please click the portal to help me summon the city!",
		[11] = "Now opening a portal to Ironforge.  Or was it Orgrimmar? Maybe Stormwind or Thunder bluff? I guess we'll just have to find out!",
		[12] = "Whatever you do, DON'T TOUCH THE PORTAL",
		[13] = "Gateway to hell? Coming right up!",
	};
	L["CRYOLYSIS_POLY_MESSAGE"] = {
		["Sheep"] = {
			[1] = "<target> has been baaaaaaaaad!",
			[2] = "I'm little bopeep! Don't touch the sheep!",
			[3] = "Sheeping <target>, break it and I break your kneecaps.",
			[4] = "Skies above and oceans deep, <target> is now a sheep!",
			[5] = "Sheeping <target>, DON'T TOUCH MY MUTTON!",
			[6] = "Sheeping <target>! Drop what you're doing and break it! ",
			[7] = "Stay away from <target>, I still need mats for [Wool Socks]",
			[8] = "Okay <target>, repeat after me. Baaaaa",
			[9] = "Sheeping <target>. Everytime you break a sheep, God kills a kitten.",
			[10] = "Polymorphing <target>!  You break it, you tank it.",
			[11] = "<target> is my sheep. There are many others like it but self one is mine.",
			[12] = "Polymorphing <target>, please keep your pants up.",
			[13] = "Baa, Baa, <target>.  Have you any wool?",
			[14] = "Polymorphing <target> because sheep don't say no.",
			[15] = "Polymorph on <target>. Repeated poking may cause explosions",
			[16] = "What's white and fluffy and covered in wool?  <target> of course!",
			[17] = "<target>, have you ever read the works of Franz Kafka?",
			[18] = "How's my sheeping? Call 1-800-BAH-RAM-U",
			[19] = "Bah, <target>",
			[20] = "Polymorph on <target>.  You break it, you buy it.",
			[21] = "Polymorph on *yawn* <target>.  So many sheep... zzzz",
			[22] = "Go deep into your cave, <target>, and find your power animal",
			[23] = "I know how frightening and intimidating mutton can be, but please try to overcome self phobia you have of <target>",
			
		},
		["Pig"] = {
			[1] = "Sooooo Weeeeee! here Piggy <target>. Dont Steal the Bacon!",
			[2] = "Porking <target>.  Oink! Oink!",
			[3] = "PORKCHOP SANDWICHES!!",
			[4] = "I smell bacon I smell pork, look out <target> I have a fork!",
			[5] = "<target>:  The other white meat.",
			[6] = "That'll do, <target>.  That'll do.",
			[7] = "In space, no one can hear you squeal",
			[8] = "<target>, will you be Mr. Wiggles' friend?",
			[9] = "I think <target> was raised in a barn",
			[10] = "<target>'s new name shall be Comrade Napoleon",
			[11] = "Orsen Wells wants to have a word with you, <target>",
            [12] = "<target> is not kosher!",
            [13] = "Congrats, <target>, you are now the Prince of Denmark!",
            [14] = "self above all: to thine own self be true, And it must follow, as the night the day, Thou canst not then be false to any man.",
            [15] = "Dog's can't tell that <target>'s not bacon.",
            [16] = "<target> makes me want to read Hamlet.",
            
		},
		["Turtle"] = {
			[1] = "GO SQUIRTLE!",
			[2] = "Slow and steady won't win the race for <target> self time",
			[3] = "Hey <target>, you up for some soup? =D",
			[4] = "GAM-E-RA! GAM-E-RA! <target> is a friend to children everywhere.",
			[5] = "<target> is a hero on the half-shell!",
		},
	};
	L["CRYOLYSIS_STEED_MESSAGE"] = {
		[1] = "If it wasn't for my <mount>, I wouldn't have spent that year in college.",
		[2] = "The directions said to just add water and... WHOA a <mount>!",
		[3] = "My <mount> ate all my conjured food again!  Better make more...",
	};
	L["CRYOLYSIS_FREEZE_MESSAGE"] = {
		[1] = "I enjoy my <target>s on the rocks",
		[2] = "Looks like <target> needs to get a sweater!",
		[3] = "<3 Freezing Band",
		[4] = "Take a chill pill, <target>",
		[5] = "That's just cold, <target>.  Just plain cold",
		[6] = "And thats how I killed the dinosaurs",
		[7] = "Why so blue, <target>?",
		[8] = "Enjoy your 'You can't do that while frozen' messages",
		[9] = "Iceberg! Dead ahead!",
		[10] = "I don't know how we're gonna get <target> thawed!",
	};
	L["CRYOLYSIS_SHORT_MESSAGES"] = {
		[1] = "--> Opening a portal to <portal> <--",
		[2] = "Polymorph ==> <target>",
	};

end