repeat wait() until game:IsLoaded()
local MainLink = "https://raw.githubusercontent.com/HimikoToga1474/Ahegao-Hub/Master/"
shared.games = {
    [4562626938] = "Limitless RPG",
    [536102540] = "Dragon Ball Z Final Stand",
    [4368069325] = "Building Simulator 2",
    [3652625463] = "Lifting Simulator",
    [1417427737] = "Mining Simulator",
    [4063374088] = "Planet Hoppers",
    [2716845201] = "Warrior Simulator",
}

for _,place in pairs(game:GetService("AssetService"):getGamePlacesAsync():GetCurrentPage()) do
    for i,v in pairs(shared.games) do
        if place.PlaceId == i then
            shared.CurrentGame = v
            wait()
            MainLink = MainLink..shared.CurrentGame
        end
    end
end
wait()
loadstring(game:HttpGet(MainLink:gsub(" ", "%%20")))()