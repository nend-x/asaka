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

local function aZx(part, targetPos)
	part.Touched:Connect(function(hit)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPos)
		end
	end)
end

local function kWq(position)
	local wall = Instance.new("Part")
	wall.Size = Vector3.new(100, 100, 2)
	wall.Position = position
	wall.Anchored = true
	wall.Material = Enum.Material.Plastic
	wall.TopSurface = Enum.SurfaceType.Studs
	wall.Transparency = 0.5
	wall.Color = Color3.fromRGB(150, 150, 150)
	wall.Parent = workspace
	aZx(wall, Vector3.new(670, 397, 796))
end

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
	aZx(floor, Vector3.new(670, 397, 796))
end

local function nYv(position)
	local plate = Instance.new("Part")
	plate.Size = Vector3.new(50, 1, 50)
	plate.Position = position
	plate.Anchored = true
	plate.Material = Enum.Material.Plastic
	plate.TopSurface = Enum.SurfaceType.Studs
	plate.Transparency = 0
	plate.Color = Color3.fromRGB(150, 150, 150)
	plate.Name = "CustomBaseplate"
	plate.Parent = workspace
end

local function pEx(position)
	local cube = Instance.new("Part")
	cube.Size = Vector3.new(6, 6, 6)
	cube.Position = position
	cube.Anchored = true
	cube.Material = Enum.Material.Neon
	cube.Color = Color3.fromRGB(255, 50, 50)
	cube.TopSurface = Enum.SurfaceType.Smooth
	cube.BottomSurface = Enum.SurfaceType.Smooth
	cube.Parent = workspace
	aZx(cube, Vector3.new(623, 198, 922))
end

Button.MouseButton1Click:Connect(function()
	kWq(Vector3.new(685, 198, 915))
	kWq(Vector3.new(685, 198, 926))
	tRm(Vector3.new(676, 190, 921))
	nYv(Vector3.new(675, 386, 793))
	pEx(Vector3.new(696, 393, 793))
end)
