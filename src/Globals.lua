------------------------------------------------------------------------------------------------------
-- Global objects and variables, used in various parts of the code --
------------------------------------------------------------------------------------------------------

-- Cryolysis config, holds all settings per player
CRYOLYSIS_CONFIG = {};
-- Object which holds positions of all the frames
FRAME_POSITIONS = {};
-- Object which holds meta information about addon
CRYOLYSIS_DATA = {};
CryolysisData.Version = "2.0";
CryolysisData.Title = "Cryolysis";
CryolysisData.Author = "Shtil";
CryolysisData.Label = CryolysisData.Title .. " " .. CryolysisData.Version .. " by " .. CryolysisData.Author;
-- Table for storing spell timers
SPELL_TIMER = {};

-- Path to textures
TEXTURES_PATH = "resources\\UI\\";
TEXTURES_BLUE_PATH = "resources\\UI\Bleu\\";
TEXTURES_ORANGE_PATH = "resources\\UI\Orange\\";
TEXTURES_VIOLET_PATH = "resources\\UI\Violet\\";

-- Path to sounds
SOUNDS_PATH = "resources\\sounds\\";

SHEEP_WARN_SOUND = "Sheep01.mp3";
SHEEP_BREAK_SOUND = "Sheep02.mp3";
PIG_WARN_SOUND = "Pig01.mp3";
PIG_BREAK_SOUND = "Pig02.mp3";

-- Path to localizations
LOCALES_PATH = "resources\\locales\\";

-- Intro to user message in chat
CRYOLYSIS_USER_MESSAGE_INTRO = "|C2D47E7EECr|C2B7EECEEyo|C2AA2EFEEly|C28C6F4EEsis|CFFFFFFFF: ";

