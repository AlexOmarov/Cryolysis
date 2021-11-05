------------------------------------------------------------------------------------------------------
			-- Global objects and variables, used in various parts of the code --
------------------------------------------------------------------------------------------------------

-- Cryolysis main object, holds references for all Cryolysis inner API (for all modules, like TimerMenu etc.)
CRYOLYSIS = {};
-- Cryolysis config, holds all settings per player
CRYOLYSIS_CONFIG = {};
-- Object which holds positions of all the frames
FRAME_POSITIONS = {};
-- Object which holds meta information about addon
CRYOLYSIS_DATA = {};
-- Table for storing spell timers
SPELL_TIMER = {};

-- Path to textures
TEXTURES_PATH = "resources\\UI\\";
TEXTURES_BLUE_PATH = "resources\\UI\Bleu\\";
TEXTURES_ORANGE_PATH = "resources\\UI\Orange\\";
TEXTURES_VIOLET_PATH = "resources\\UI\Violet\\";

-- Path to sounds
SOUNDS_PATH = "resources\\sounds\\";

-- Path to localizations
LOCALES_PATH = "resources\\locales\\";

-- Intro to user message in chat
CRYOLYSIS_USER_MESSAGE_INTRO = "|C2D47E7EECr|C2B7EECEEyo|C2AA2EFEEly|C28C6F4EEsis|CFFFFFFFF: ";