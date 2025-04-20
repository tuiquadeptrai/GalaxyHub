-- Galaxy GUI
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GalaxyGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Frame chính
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
frame.BackgroundTransparency = 0.15
frame.Visible = false
frame.Draggable = true
frame.Active = true
frame.Parent = screenGui

-- Nút logo hình tròn
local logo = Instance.new("TextButton")
logo.Size = UDim2.new(0, 50, 0, 50)
logo.Position = UDim2.new(0, 10, 0, 10)
logo.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
logo.Text = "🔮"
logo.TextScaled = true
logo.Font = Enum.Font.SourceSansBold
logo.TextColor3 = Color3.fromRGB(255, 255, 255)
logo.Parent = screenGui
logo.BackgroundTransparency = 0.2
logo.AutoButtonColor = true

-- Ấn logo để bật/tắt GUI
local opened = false
logo.MouseButton1Click:Connect(function()
    opened = not opened
    if opened then
        frame.Visible = true
        frame:TweenSize(UDim2.new(0, 400, 0, 300), "Out", "Quad", 0.3, true)
    else
        frame:TweenSize(UDDim2.new(0, 0, 0, 0), "In", "Quad", 0.3, true)
        wait(0.3)
        frame.Visible = false
    end
end)

-- Tạo 4 mục
local function createButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 100, 0, 30)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Text = text
    button.TextScaled = true
    button.Font = Enum.Font.SourceSansBold
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = frame
    button.BackgroundTransparency = 0.2
    button.AutoButtonColor = true
    return button
end

local informationButton = createButton("Information", UDim2.new(0, 10, 0, 10))
local mainButton = createButton("Main", UDim2.new(0, 10, 0, 50))
local universeButton = createButton("Universe", UDim2.new(0, 10, 0, 90))
local updateMoreButton = createButton("Update More", UDim2.new(0, 10, 0, 130))

-- Welcome Text hiệu ứng
local welcomeText = Instance.new("TextLabel")
welcomeText.Text = "Welcome to Galaxy GUI"
welcomeText.Size = UDim2.new(0, 300, 0, 50)
welcomeText.Position = UDim2.new(0.5, -150, 0.15, 0)
welcomeText.BackgroundTransparency = 1
welcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeText.TextScaled = true
welcomeText.Font = Enum.Font.GothamSemibold
welcomeText.Parent = screenGui
welcomeText.TextTransparency = 0
welcomeText.TextStrokeTransparency = 1

-- Hiện 2 giây rồi từ từ mờ đi
task.delay(2, function()
    for i = 0, 1, 0.05 do
        welcomeText.TextTransparency = i
        task.wait(0.05)
    end
    welcomeText:Destroy()
end)


local function createButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 100, 0, 30)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Text = text
    button.TextScaled = true
    button.Font = Enum.Font.SourceSansBold
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = frame
    button.BackgroundTransparency = 0.2
    button.AutoButtonColor = true
    return button
end

local informationButton = createButton("Information", UDim2.new(0, 10, 0, 10))
local mainButton = createButton("Main", UDim2.new(0, 10, 0, 50))
local universeButton = createButton("Universe", UDim2.new(0, 10, 0, 90))
local updateMoreButton = createButton("Update More", UDim2.new(0, 10, 0, 130))

-- Thêm chức năng cho nút "Information"
local adminText = Instance.new("TextLabel")
adminText.Text = ""
adminText.Size = UDim2.new(0, 200, 0, 30)
adminText.Position = UDim2.new(0.5, -100, 0, -30)
adminText.BackgroundTransparency = 1
adminText.TextColor3 = Color3.fromRGB(255, 255, 255)
adminText.TextScaled = true
adminText.Font = Enum.Font.GothamSemibold
adminText.Parent = frame

informationButton.MouseButton1Click:Connect(function()
    adminText.Text = "Admin: ezaa010 🔨"
end)


