-- Painel Completo Synapse X Style

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 420, 0, 320)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(32,34,37)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

local Shadow = Instance.new("ImageLabel")
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.Position = UDim2.new(0.5, 0, 0.5, 8)
Shadow.Size = UDim2.new(1, 32, 1, 32)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://1316045217"
Shadow.ImageTransparency = 0.6
Shadow.Parent = MainFrame

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 18)
UICorner.Parent = MainFrame

-- Barra Superior
local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 48)
TopBar.Position = UDim2.new(0,0,0,0)
TopBar.BackgroundColor3 = Color3.fromRGB(44,47,51)
TopBar.BorderSizePixel = 0
TopBar.Parent = MainFrame

local UICornerBar = Instance.new("UICorner")
UICornerBar.CornerRadius = UDim.new(0, 16)
UICornerBar.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -60, 1, 0)
Title.Position = UDim2.new(0, 18, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Painel Synapse X"
Title.TextColor3 = Color3.fromRGB(200, 200, 200)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 28
Title.Parent = TopBar

-- Abas
local TabFrame = Instance.new("Frame")
TabFrame.Size = UDim2.new(1, -24, 0, 36)
TabFrame.Position = UDim2.new(0, 12, 0, 56)
TabFrame.BackgroundTransparency = 1
TabFrame.Parent = MainFrame

local tabs = {"Principal", "Comandos", "Configurações"}
local tabButtons = {}

for i,tabName in ipairs(tabs) do
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 120, 1, 0)
    btn.Position = UDim2.new(0, (i-1)*130, 0, 0)
    btn.BackgroundColor3 = (i==1) and Color3.fromRGB(50,130,255) or Color3.fromRGB(44,47,51)
    btn.Text = tabName
    btn.TextColor3 = Color3.fromRGB(255,255,255)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextSize = 20
    btn.Parent = TabFrame
    btn.Name = "Tab"..tabName
    local UICornerBtn = Instance.new("UICorner")
    UICornerBtn.CornerRadius = UDim.new(0, 10)
    UICornerBtn.Parent = btn
    tabButtons[i] = btn
end

-- Conteúdo das abas
local ContentFrames = {}
for i,tabName in ipairs(tabs) do
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -24, 1, -108)
    frame.Position = UDim2.new(0, 12, 0, 96)
    frame.BackgroundTransparency = 1
    frame.Parent = MainFrame
    frame.Visible = (i==1)
    ContentFrames[tabName] = frame
end

-- Principal
local Welcome = Instance.new("TextLabel")
Welcome.Size = UDim2.new(1, 0, 0, 40)
Welcome.Position = UDim2.new(0,0,0,10)
Welcome.BackgroundTransparency = 1
Welcome.Text = "Bem-vindo ao seu painel personalizado!"
Welcome.TextColor3 = Color3.fromRGB(170,210,255)
Welcome.Font = Enum.Font.Gotham
Welcome.TextSize = 24
Welcome.Parent = ContentFrames["Principal"]

local Button1 = Instance.new("TextButton")
Button1.Size = UDim2.new(0, 160, 0, 38)
Button1.Position = UDim2.new(0, 30, 0, 62)
Button1.BackgroundColor3 = Color3.fromRGB(50,130,255)
Button1.Text = "Executar Função"
Button1.TextColor3 = Color3.fromRGB(255,255,255)
Button1.Font = Enum.Font.GothamSemibold
Button1.TextSize = 20
Button1.Parent = ContentFrames["Principal"]
local UICornerBtn1 = Instance.new("UICorner")
UICornerBtn1.CornerRadius = UDim.new(0, 10)
UICornerBtn1.Parent = Button1
Button1.MouseButton1Click:Connect(function()
    print("Função executada!")
end)

-- Comandos
local CommandLabel = Instance.new("TextLabel")
CommandLabel.Size = UDim2.new(1, 0, 0, 32)
CommandLabel.Position = UDim2.new(0,0,0,12)
CommandLabel.BackgroundTransparency = 1
CommandLabel.Text = "Digite seu comando/script:"
CommandLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
CommandLabel.Font = Enum.Font.Gotham
CommandLabel.TextSize = 20
CommandLabel.Parent = ContentFrames["Comandos"]

local CommandBox = Instance.new("TextBox")
CommandBox.Size = UDim2.new(1, -40, 0, 50)
CommandBox.Position = UDim2.new(0, 20, 0, 56)
CommandBox.BackgroundColor3 = Color3.fromRGB(44,47,51)
CommandBox.TextColor3 = Color3.fromRGB(255,255,255)
CommandBox.Font = Enum.Font.Code
CommandBox.TextSize = 18
CommandBox.PlaceholderText = "print('Olá, mundo!')"
CommandBox.Parent = ContentFrames["Comandos"]
local UICornerCmd = Instance.new("UICorner")
UICornerCmd.CornerRadius = UDim.new(0, 8)
UICornerCmd.Parent = CommandBox

local RunButton = Instance.new("TextButton")
RunButton.Size = UDim2.new(0, 160, 0, 36)
RunButton.Position = UDim2.new(1, -180, 0, 112)
RunButton.BackgroundColor3 = Color3.fromRGB(50,130,255)
RunButton.Text = "Executar Script"
RunButton.TextColor3 = Color3.fromRGB(255,255,255)
RunButton.Font = Enum.Font.GothamSemibold
RunButton.TextSize = 18
RunButton.Parent = ContentFrames["Comandos"]
local UICornerRunBtn = Instance.new("UICorner")
UICornerRunBtn.CornerRadius = UDim.new(0, 8)
UICornerRunBtn.Parent = RunButton
RunButton.MouseButton1Click:Connect(function()
    print("Script digitado:", CommandBox.Text)
end)

-- Configurações
local ConfigLabel = Instance.new("TextLabel")
ConfigLabel.Size = UDim2.new(1, 0, 0, 32)
ConfigLabel.Position = UDim2.new(0,0,0,12)
ConfigLabel.BackgroundTransparency = 1
ConfigLabel.Text = "Configurações do painel"
ConfigLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
ConfigLabel.Font = Enum.Font.Gotham
ConfigLabel.TextSize = 20
ConfigLabel.Parent = ContentFrames["Configurações"]

local Toggle = Instance.new("TextButton")
Toggle.Size = UDim2.new(0, 180, 0, 36)
Toggle.Position = UDim2.new(0, 30, 0, 56)
Toggle.BackgroundColor3 = Color3.fromRGB(44,47,51)
Toggle.Text = "Modo escuro: Ativado"
Toggle.TextColor3 = Color3.fromRGB(255,255,255)
Toggle.Font = Enum.Font.GothamSemibold
Toggle.TextSize = 18
Toggle.Parent = ContentFrames["Configurações"]
local UICornerToggle = Instance.new("UICorner")
UICornerToggle.CornerRadius = UDim.new(0, 8)
UICornerToggle.Parent = Toggle

local darkMode = true
Toggle.MouseButton1Click:Connect(function()
    darkMode = not darkMode
    Toggle.Text = darkMode and "Modo escuro: Ativado" or "Modo escuro: Desativado"
    MainFrame.BackgroundColor3 = darkMode and Color3.fromRGB(32,34,37) or Color3.fromRGB(220,220,220)
end)

-- Troca de abas
for i,btn in ipairs(tabButtons) do
    btn.MouseButton1Click:Connect(function()
        for j,frame in pairs(ContentFrames) do
            frame.Visible = (tabs[i]==j)
        end
        for j,other in ipairs(tabButtons) do
            other.BackgroundColor3 = Color3.fromRGB(44,47,51)
        end
        btn.BackgroundColor3 = Color3.fromRGB(50,130,255)
    end)
end
