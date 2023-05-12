-- mediaItems = reaper.CountMediaItems(0)

-- for i = 0, mediaItems - 1, 1 do
--     item = reaper.GetMediaItem(0, i)
--     take = reaper.GetTake(item, 0)

--     proj = 0
--     isrgn = true
--     pos = reaper.GetMediaItemInfo_Value(item, 'D_POSITION')
--     rgnend = pos + reaper.GetMediaItemInfo_Value(item, 'D_LENGTH')

--     nameFull = reaper.GetTakeName(take)
--     pos1 = string.find(nameFull, ".", 1, true) - 1
--     -- reaper.ShowConsoleMsg(pos1)
--     -- pos2 = string.find(nameFull, ".", pos1, true) - 1
--     name = "CHAP=" .. string.sub(nameFull, 1, pos1)
--     wantidx = i
--     reaper.AddProjectMarker(proj, isrgn, pos, rgnend, name, wantidx)
-- end

buf = reaper.GetProjectPath()
-- file = io.open(buf .. "/tracks", "r")
path = string.format([[dir "%s" /b]], buf)
for dir in io.popen(path):lines() do
    subpath = string.format([[dir "%s\%s" /b]], buf, dir)
    for subdir in io.popen(subpath):lines() do
        -- reaper.ShowConsoleMsg(subdir)
    end
end
-- reaper.ShowConsoleMsg(path)

reaper.ShowConsoleMsg(reaper.GetNumTracks())
