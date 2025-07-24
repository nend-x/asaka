local function tRm(position)
    local floor = Instance.new("Part")
    floor.Size = Vector3.new(100, 2, 100)
    floor.Position = position
    floor.Anchored = true
    floor.Material = Enum.Material.Plastic
    floor.TopSurface = Enum.SurfaceType.Studs
    floor.Transparency = 0.5
    floor.Color = Color3.fromRGB(150, 150, 150)
    floor.Parent = workspace
end

tRm(Vector3.new(676, 192, 921))
