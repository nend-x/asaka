local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

ScreenGui.Name = "WallGui"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0, 100, 0, 100)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Active = true
Frame.Draggable = true

Button.Name = "PlaceWalls"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button.Position = UDim2.new(0.1, 0, 0.3, 0)
Button.Size = UDim2.new(0.8, 0, 0.4, 0)
Button.Text = "everybody vote rebel"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)

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

Button.MouseButton1Click:Connect(function()
    tRm(Vector3.new(676, 192, 921))
end)
