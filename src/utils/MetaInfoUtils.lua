------------------------------------------------------------------------------------------------------
            --  --
------------------------------------------------------------------------------------------------------

function Cryolysis:FillMetaInfo()
    local handle  = assert( io.open("Cryolysis.toc","r") )
    local value = handle:read("*line")
    while value do
        if (string.find(value, '## Version:')) then
            CryolysisData.Version = next(string.gmatch(inputstr, "([^"..":".."]+)"):reverse())
        elseif (string.find(value, '## Author:')) then
            CryolysisData.Author = next(string.gmatch(inputstr, "([^"..":".."]+)"):reverse())
        elseif (string.find(value, '## Title:')) then
            CryolysisData.Title = next(string.gmatch(inputstr, "([^"..":".."]+)"):reverse())
        end
        value = handle:read("*line")
    end
    handle:close()
    CryolysisData.Label = CryolysisData.Title.." "..CryolysisData.Version.." by "..CryolysisData.Author;
end
