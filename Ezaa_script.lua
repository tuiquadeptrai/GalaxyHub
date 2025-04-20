--// Galaxy GUI chỉ có logo mở/tắt GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GalaxyGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
frame.BackgroundTransparency = 0
frame.Visible = false
frame.Parent = screenGui

local UICorner = Instance.new("UICorner", frame)
UICorner.CornerRadius = UDim.new(0, 15)

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.Text = "Welcome to Galaxy Hub"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 30
label.Font = Enum.Font.GothamBold
label.Parent = frame

local logo = Instance.new("TextButton")
logo.Name = "GalaxyLogo"
logo.Size = UDim2.new(0, 60, 0, 60)
logo.Position = UDim2.new(0, 20, 0, 20)
logo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
logo.Text = "🔮"
logo.TextColor3 = Color3.fromRGB(255, 255, 255)
logo.TextSize = 30
logo.Font = Enum.Font.GothamBold
logo.Parent = screenGui

local logoCorner = Instance.new("UICorner", logo)
logoCorner.CornerRadius = UDim.new(1, 0)

local TweenService = game:GetService("TweenService")

local function showGui()
    frame.Visible = true
    TweenService:Create(frame, TweenInfo.new(0.4), {BackgroundTransparency = 0}):Play()
end

local function hideGui()
    local tween = TweenService:Create(frame, TweenInfo.new(0.4), {BackgroundTransparency = 1})
    tween:Play()
    tween.Completed:Connect(function()
        frame.Visible = false
        frame.BackgroundTransparency = 0
    end)
end

local isOpen = false
logo.MouseButton1Click:Connect(function()
    if isOpen then
        hideGui()
    else
        showGui()
    end
    isOpen = not isOpen
end)
