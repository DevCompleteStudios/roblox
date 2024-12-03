local ui_library = Instance.new("ScreenGui")
local slider = Instance.new("Frame")
local close = Instance.new("TextButton")
local min = Instance.new("TextButton")
local container = Instance.new("Frame")
local menus = Instance.new("Frame")
local navbar = Instance.new("ScrollingFrame")
local order = Instance.new("UIListLayout")

ui_library.Name = "ui_library"
ui_library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ui_library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

slider.Name = "slider"
slider.Parent = ui_library
slider.AnchorPoint = Vector2.new(0.5, 0.5)
slider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
slider.BackgroundTransparency = 0.500
slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
slider.BorderSizePixel = 0
slider.Position = UDim2.new(0.5, 0, 0.200000003, 0)
slider.Size = UDim2.new(0.400000006, 0, 0.0350000001, 0)

close.Name = "close"
close.Parent = slider
close.AnchorPoint = Vector2.new(0.5, 0.5)
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.964999974, 0, 0.5, 0)
close.Size = UDim2.new(0.0500000007, 0, 1, 0)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

min.Name = "min"
min.Parent = slider
min.AnchorPoint = Vector2.new(0.5, 0.5)
min.BackgroundColor3 = Color3.fromRGB(55, 208, 0)
min.BorderColor3 = Color3.fromRGB(0, 0, 0)
min.BorderSizePixel = 0
min.Position = UDim2.new(0.899999976, 0, 0.5, 0)
min.Size = UDim2.new(0.0500000007, 0, 1, 0)
min.Font = Enum.Font.SourceSans
min.Text = "-"
min.TextColor3 = Color3.fromRGB(0, 0, 0)
min.TextScaled = true
min.TextSize = 14.000
min.TextWrapped = true

container.Name = "container"
container.Parent = slider
container.AnchorPoint = Vector2.new(0.5, 0)
container.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
container.BackgroundTransparency = 0.500
container.BorderColor3 = Color3.fromRGB(0, 0, 0)
container.BorderSizePixel = 0
container.Position = UDim2.new(0.5, 0, 0.999999464, 0)
container.Size = UDim2.new(1, 0, 12, 0)

menus.Name = "menus"
menus.Parent = container
menus.AnchorPoint = Vector2.new(1, 0.5)
menus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menus.BackgroundTransparency = 1.000
menus.BorderColor3 = Color3.fromRGB(0, 0, 0)
menus.BorderSizePixel = 0
menus.Position = UDim2.new(1, 0, 0.5, 0)
menus.Size = UDim2.new(0.800000012, 0, 1, 0)

navbar.Name = "navbar"
navbar.Parent = container
navbar.Active = true
navbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
navbar.BackgroundTransparency = 0.700
navbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
navbar.BorderSizePixel = 0
navbar.Size = UDim2.new(0.200000003, 0, 1, 0)
navbar.CanvasSize = UDim2.new(0, 0, 1, 0)

order.Name = "order"
order.Parent = navbar
order.SortOrder = Enum.SortOrder.LayoutOrder
order.Padding = UDim.new(0.0299999993, 0)


local envs = {
	abreviateNumber = function (n)
		local absNum = math.abs(n)
		local abreviado = ""

		if absNum >= 1e12 then
			abreviado = string.format("%.2fT", n / 1e12)
		elseif absNum >= 1e9 then
			abreviado = string.format("%.2fB", n / 1e9)
		elseif absNum >= 1e6 then
			abreviado = string.format("%.2fM", n / 1e6)
		elseif absNum >= 1e3 then
			abreviado = string.format("%.2fK", n / 1e3)
		else
			abreviado = tostring(math.round(n))
		end

		return abreviado
	end,

	notify = function(message, title, duration)
		local StarterGui = game:GetService("StarterGui")

		StarterGui:SetCore("SendNotification", {
			Title = title or 'Alert!';
			Text = message;
			Duration = duration or 5; -- Duración en segundos
		})
	end,

	onScrollingFrame = function(frame:ScrollingFrame)
		frame.AutomaticCanvasSize = Enum.AutomaticSize.Y

		local order = Instance.new("UIListLayout")
		order.Name = "order"
		order.Parent = frame
		order.SortOrder = Enum.SortOrder.LayoutOrder
		order.Padding = UDim.new(0.02, 0)
	end,
}


local function createBtn(nav, name)
	local button = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")

	button.Name = name
	button.Parent = nav
	button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(0.9, 0, 0.11, 0)
	button.Font = Enum.Font.GothamMedium
	button.Text = name
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextScaled = true
	button.TextSize = 14.000
	button.TextWrapped = true
	button.AutoButtonColor = true

	UICorner.CornerRadius = UDim.new(0.15, 0)
	UICorner.Parent = button

	return button
end

local function createScrolling(name, parent)
	local test = Instance.new("ScrollingFrame")
	test.Name = name
	test.Parent = parent
	test.Active = true
	test.Visible = false
	test.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	test.BackgroundTransparency = 1.000
	test.BorderColor3 = Color3.fromRGB(0, 0, 0)
	test.BorderSizePixel = 0
	test.Size = UDim2.new(1, 0, 1, 0)
	test.CanvasSize = UDim2.new(0, 0, 1, 0)

	return test
end



local validations = {}


local componentsLogic = {
	onInput = function(data, input)
		local defaultText = data.previewText
		local dataType = data.dataType
		local maxCharacters = data.maxCharacters
		local range = data.numberRange
		local onSucces = data.onSucces

		local envs = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('envs'))
		local title = input:WaitForChild('title')
		local value = input:WaitForChild('value')
		local err = nil

		value.Text = defaultText

		local function validateInputAnyValue()
			if err then return end
			local text = value.Text

			if maxCharacters and #text > maxCharacters then
				text = string.sub(text, 1, -2)
			else
				err = nil
			end

			value.Text = text
		end

		local function validateInputNumberValue()
			local text = value.Text
			local numericText = text:gsub("%D", "")

			if text ~= numericText then
				value.Text = numericText
			elseif tonumber(numericText) and range and tonumber(numericText) > range.max then
				err = 'The number must be greater than '..tostring(range.max)
			elseif tonumber(numericText) and range and tonumber(numericText) < range.min then
				err = 'The number must be less than '..tostring(range.min)
			else
				err = nil
			end
		end


		value.Changed:Connect(function(property)
			if property == "Text" then

				if dataType == 'number' then
					validateInputNumberValue()
				end

				validateInputAnyValue()
			end
		end)

		value.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				if #value.text <= 0 then
					envs.notify('Please enter a valid text.')
					return
				end

				if err then
					envs.notify(err)
				else
					envs.notify(data.alertTitleSucces or 'Succes', data.alertTextSucces or 'Data sent successfully')
					onSucces(value.Text)
				end
			end
		end)
	end,

	onSlider = function(data, slideBar)
		local envs = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('envs'))

		local function onSlider(ValorActual, ValorMinimo, ValorMaximo, Barra, Mango, valueText, onFinishedMove, onMove)
			local UserInputService = game:GetService("UserInputService")
			local Arrastrando = false
			local minSize = 0.05

			local ValorMaximo = ValorMaximo or ValorMinimo * 10

			local function ActualizarPosicionMango(porcentaje) 
				Mango.Size = UDim2.new(math.max(minSize, porcentaje), 0, 1, 0)
				valueText.Text = envs.abreviateNumber(ValorActual)
			end

			ActualizarPosicionMango((ValorActual - ValorMinimo) / (ValorMaximo - ValorMinimo))

			local function ActualizarValor(input)
				if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end

				if not Arrastrando then
					return
				end

				local posX = math.clamp(input.Position.X - Barra.AbsolutePosition.X, 0, Barra.AbsoluteSize.X)
				local porcentaje = posX / Barra.AbsoluteSize.X
				ValorActual = math.round( ValorMinimo + (porcentaje * (ValorMaximo - ValorMinimo)) )

				ActualizarPosicionMango(porcentaje)
				if onMove then
					onMove(ValorActual)
				end
			end

			Mango.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					Arrastrando = true
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					if onFinishedMove and Arrastrando then
						onFinishedMove(ValorActual)
						Arrastrando = false
					end
				end
			end)

			UserInputService.InputChanged:Connect(ActualizarValor)
		end

		local minValue = data.minValue
		local value = data.value
		local maxValue = data.maxValue
		local title = data.title
		local onFinishedMove = data.onEndingMove
		local onMove = data.onMove

		local sliderTitle = slideBar:WaitForChild('title')
		local valueText = slideBar:WaitForChild('value')
		local slider = slideBar:WaitForChild('slider')
		local btn = slider:WaitForChild('btn')

		onSlider(value, minValue, maxValue, slider, btn, valueText, onFinishedMove, onMove)
	end,

	onOption = function(data, opt)
		local defaultValue = data.defaultValue
		local onClick = data.onClick

		local posActive = UDim2.new(1, 0,0.5, 0)
		local posDisabled = UDim2.new(0.5, 0,0.5, 0)

		local colorActive = Color3.new(1, 1, 1)
		local colorDisabled = Color3.new(0.462745, 0.462745, 0.462745)

		local backgroundActive = Color3.new(0.701961, 0, 1)

		local switch = opt:WaitForChild('Switch')
		local title = opt:WaitForChild('title')

		local switchText = switch:WaitForChild('Text'):WaitForChild('value')
		local foreground = switch:WaitForChild('Image'):WaitForChild('Foreground')
		local backgroundColor = switch:WaitForChild('Image'):WaitForChild('Background')

		local timeAnimation = 0.04

		local function checkStatusBtn()
			if defaultValue then
				foreground:TweenPosition(posActive, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, timeAnimation)
				foreground.ImageColor3 = colorActive
				backgroundColor.BackgroundColor3 = backgroundActive
				switchText.Text = 'On'
			else
				foreground:TweenPosition(posDisabled, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, timeAnimation)
				foreground.ImageColor3 = colorDisabled
				backgroundColor.BackgroundColor3 = colorDisabled
				switchText.Text = 'Off'
			end
		end

		checkStatusBtn()

		switch.MouseButton1Click:Connect(function()
			defaultValue = not defaultValue
			checkStatusBtn()
			onClick(defaultValue)
		end)
	end,

	onText = function(data, text)
		local value = text:WaitForChild('value')

		local changeText = function(textContent)
			value.Text = textContent
		end

		changeText(data.content)
		return changeText
	end,	


}


local components = {
	input = function(window, data)
		local input = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local value = Instance.new("TextBox")
		local UICorner_2 = Instance.new("UICorner")
		local title = Instance.new("TextLabel")

		input.Name = "input"
		input.Parent = window
		input.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		input.BorderColor3 = Color3.fromRGB(0, 0, 0)
		input.BorderSizePixel = 0
		input.Size = UDim2.new(0.970000029, 0, 0.200000003, 0)

		UICorner.CornerRadius = UDim.new(0.100000001, 0)
		UICorner.Parent = input

		value.Name = "value"
		value.Parent = input
		value.AnchorPoint = Vector2.new(0.5, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Position = UDim2.new(0.5, 0, 0.699999988, 0)
		value.Size = UDim2.new(0.899999976, 0, 0.449999988, 0)
		value.Font = Enum.Font.SourceSans
		value.Text = data.previewText or 'Ex. Hello World'
		value.TextColor3 = Color3.fromRGB(107, 107, 107)
		value.TextScaled = true
		value.TextSize = 14.000
		value.TextWrapped = true

		UICorner_2.CornerRadius = UDim.new(0.200000003, 0)
		UICorner_2.Parent = value

		title.Name = 'title'
		title.Parent = input
		title.AnchorPoint = Vector2.new(0.5, 0.5)
		title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderColor3 = Color3.fromRGB(93, 93, 93)
		title.Position = UDim2.new(0.5, 0, 0.25, 0)
		title.Size = UDim2.new(0.899999976, 0, 0.25, 0)
		title.Font = Enum.Font.Unknown
		title.Text = data.title or 'Default title'
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true

		componentsLogic.onInput(data, input)
	end,

	option = function(window, data)
		local option = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local title = Instance.new("TextLabel")
		local Switch = Instance.new("ImageButton")
		local Image = Instance.new("Frame")
		local Background = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local Foreground = Instance.new("ImageLabel")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local Text = Instance.new("Frame")
		local value = Instance.new("TextLabel")

		option.Name = "option"
		option.Parent = window
		option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		option.BorderColor3 = Color3.fromRGB(0, 0, 0)
		option.BorderSizePixel = 0
		option.Size = UDim2.new(0.970000029, 0, 0.150000006, 0)

		UICorner.CornerRadius = UDim.new(0.100000001, 0)
		UICorner.Parent = option

		title.Name = "title"
		title.Parent = option
		title.AnchorPoint = Vector2.new(0, 0.5)
		title.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
		title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderSizePixel = 0
		title.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
		title.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
		title.Font = Enum.Font.Unknown
		title.Text = data.title
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true

		Switch.Name = "Switch"
		Switch.Parent = option
		Switch.AnchorPoint = Vector2.new(0.5, 0.5)
		Switch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Switch.BackgroundTransparency = 1.000
		Switch.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Switch.BorderSizePixel = 0
		Switch.Position = UDim2.new(0.800000012, 0, 0.5, 0)
		Switch.Size = UDim2.new(0.119999997, 0, 1, 0)

		Image.Name = "Image"
		Image.Parent = Switch
		Image.AnchorPoint = Vector2.new(0.5, 0.5)
		Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Image.BackgroundTransparency = 1.000
		Image.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Image.BorderSizePixel = 0
		Image.Position = UDim2.new(0.5, 0, 0.5, 0)
		Image.Size = UDim2.new(1, 0, 1, 0)
		Image.ZIndex = 2

		Background.Name = "Background"
		Background.Parent = Image
		Background.AnchorPoint = Vector2.new(0.5, 0.5)
		Background.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
		Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Background.BorderSizePixel = 0
		Background.Position = UDim2.new(0.5, 0, 0.5, 0)
		Background.Size = UDim2.new(1, 0, 0.400000006, 0)

		UICorner_2.CornerRadius = UDim.new(0.5, 0)
		UICorner_2.Parent = Background

		Foreground.Name = "Foreground"
		Foreground.Parent = Image
		Foreground.AnchorPoint = Vector2.new(1, 0.5)
		Foreground.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
		Foreground.BackgroundTransparency = 1.000
		Foreground.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Foreground.BorderSizePixel = 0
		Foreground.Position = UDim2.new(0.5, 0, 0.5, 0)
		Foreground.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
		Foreground.ZIndex = 2
		Foreground.Image = "rbxassetid://11953889677"
		Foreground.ImageColor3 = Color3.fromRGB(126, 126, 126)

		UIAspectRatioConstraint.Parent = Foreground
		UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

		Text.Name = "Text"
		Text.Parent = Switch
		Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text.BackgroundTransparency = 1.000
		Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text.BorderSizePixel = 0
		Text.Position = UDim2.new(1, 7, 0, 0)
		Text.Size = UDim2.new(1, 0, 1, 0)

		value.Name = "value"
		value.Parent = Text
		value.AnchorPoint = Vector2.new(0, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		value.BackgroundTransparency = 1.000
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Position = UDim2.new(0, 0, 0.5, 0)
		value.Size = UDim2.new(1, 0, 1, 0)
		value.Font = Enum.Font.SourceSansBold
		value.Text = "Off"
		value.TextColor3 = Color3.fromRGB(240, 240, 240)
		value.TextSize = 18.000
		value.TextXAlignment = Enum.TextXAlignment.Left

		componentsLogic.onOption(data, option)
	end,

	slider = function(parent, data)
		local slideBar = Instance.new("Frame")
		local title = Instance.new("TextLabel")
		local value = Instance.new("TextLabel")
		local slider = Instance.new("Frame")
		local rounded = Instance.new("UICorner")
		local btn = Instance.new("TextButton")
		local rounded_2 = Instance.new("UICorner")

		slideBar.Name = "slideBar"
		slideBar.Parent = parent
		slideBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		slideBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		slideBar.BorderSizePixel = 0
		slideBar.Size = UDim2.new(0.970000029, 0, 0.25, 0)

		title.Name = "title"
		title.Parent = slideBar
		title.AnchorPoint = Vector2.new(0.5, 0.5)
		title.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
		title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderSizePixel = 0
		title.Position = UDim2.new(0.5, 0, 0.200000003, 0)
		title.Size = UDim2.new(1, 0, 0.200000003, 0)
		title.Font = Enum.Font.Roboto
		title.Text = data.title
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true

		value.Name = "value"
		value.Parent = slideBar
		value.AnchorPoint = Vector2.new(0.5, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		value.BackgroundTransparency = 1.000
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Position = UDim2.new(0.5, 0, 0.479999989, 0)
		value.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
		value.Font = Enum.Font.Unknown
		value.Text = "19.00M"
		value.TextColor3 = Color3.fromRGB(38, 255, 0)
		value.TextScaled = true
		value.TextSize = 14.000
		value.TextWrapped = true

		slider.Name = "slider"
		slider.Parent = slideBar
		slider.AnchorPoint = Vector2.new(0.5, 0.5)
		slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
		slider.BorderSizePixel = 0
		slider.Position = UDim2.new(0.5, 0, 0.800000012, 0)
		slider.Size = UDim2.new(0.899999976, 0, 0.200000003, 0)

		rounded.CornerRadius = UDim.new(0.5, 0)
		rounded.Name = "rounded"
		rounded.Parent = slider

		btn.Name = "btn"
		btn.Parent = slider
		btn.AnchorPoint = Vector2.new(0, 0.5)
		btn.BackgroundColor3 = Color3.fromRGB(191, 0, 255)
		btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		btn.BorderSizePixel = 0
		btn.Position = UDim2.new(0, 0, 0.5, 0)
		btn.Size = UDim2.new(0.0500000007, 0, 1, 0)
		btn.Font = Enum.Font.SourceSans
		btn.Text = ""
		btn.TextColor3 = Color3.fromRGB(0, 0, 0)
		btn.TextSize = 14.000

		rounded_2.CornerRadius = UDim.new(0.400000006, 0)
		rounded_2.Name = "rounded"
		rounded_2.Parent = btn

		componentsLogic.onSlider(data, slideBar)
	end,

	userList = function()
	end,

	text = function(window, data)
		local text = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local value = Instance.new("TextLabel")

		text.Name = "text"
		text.Parent = window
		text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		text.BorderColor3 = Color3.fromRGB(0, 0, 0)
		text.BorderSizePixel = 0
		text.Size = UDim2.new(0.970000029, 0, 0.0799999982, 0)

		UICorner.CornerRadius = UDim.new(0.150000006, 0)
		UICorner.Parent = text

		value.Name = "value"
		value.Parent = text
		value.AnchorPoint = Vector2.new(0.5, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderColor3 = Color3.fromRGB(134, 0, 212)
		value.Position = UDim2.new(0.5, 0, 0.5, 0)
		value.Size = UDim2.new(0.985000014, 0, 0.800000012, 0)
		value.Font = Enum.Font.Roboto
		value.Text = data.content
		value.TextColor3 = Color3.fromRGB(194, 194, 194)
		value.TextScaled = true
		value.TextSize = 14.000
		value.TextStrokeColor3 = Color3.fromRGB(115, 0, 197)
		value.TextWrapped = true

		return componentsLogic.onText(data, text)
	end,
}




local Window = {}
Window.__index = Window

local newWindow = function(name)
	if not name then error('Missing name') end
	name = string.lower(name)

	local nav = script.Parent:WaitForChild('slider'):WaitForChild('container'):WaitForChild('navbar')
	local menus = script.Parent:WaitForChild('slider'):WaitForChild('container'):WaitForChild('menus')

	if nav:FindFirstChild(name) or menus:FindFirstChild(name) then error('Window with name: "'..name..'" already exists') end

	local btn = createBtn(nav, name)
	local frame = createScrolling(name, menus)


	local self = setmetatable({}, Window)
	self.element = frame
	self.parent = menus

	return self
end


function Window:slider(data)
	if not data then error('Missing data on slider') end

	local minValue = data.minValue
	local value = data.value
	local maxValue = data.maxValue
	local title = data.title
	local onFinishedMove = data.onEndingMove
	local onMove = data.onMove

	--TODO: validaciones	
	if type(minValue) ~= 'number' or (maxValue and type(maxValue) ~= 'number') or type(value) ~= 'number' then
		error('Enter allowed numeric values.')
	end

	if value < minValue then
		error('The current value cannot be less than the minimum value.')
	elseif maxValue and value > maxValue then
		error('The current value cannot be greater than the maximum value')
	elseif not maxValue and value > minValue * 10 then
		error('The maximum value cannot be null.')
	end

	if title and type(title) ~= 'string' then
		error('Title must be a string')
	end

	if (onMove and type(onMove) ~= 'function') or (onFinishedMove and type(onFinishedMove) ~= 'function') then
		error('Callbacks must be functions.')
	end

	components.slider(self.element, data)
end

function Window:input(data)
	local defaultText = data.previewText
	local dataType = data.dataType
	local maxCharacters = data.maxCharacters
	local range = data.numberRange
	local onSucces = data.onSucces
	local alertTitleSucces = data.alertTitleSucces
	local alertTextSucces = data.alertTextSucces
	-- aplicar validaciones

	components.input(self.element, data)
end

function Window:option(data)
	local onClick = data.onClick
	local title = data.title
	local defaultValue = data.defaultValue
	-- validaciones

	components.option(self.element, data)
end

function Window:Text(data)
	local content = data.content

	-- validaciones
	if not content or type(content) ~= 'string' then
		error('The content must be a text')
	end

	return components.text(self.element, data)
end


local Library = {}

Library.__self = Library

function Library:Window(name)
	return newWindow(name)
end


local function XKCEU_fake_script() -- navbar.LocalScript 
	local script = Instance.new('LocalScript', navbar)

	local navBar = script.Parent
	local menus = navBar.Parent:WaitForChild('menus')
	
	local function showScrolling(name)
		for _, frame in pairs(menus:GetChildren()) do
			if frame:IsA('ScrollingFrame') then
				if frame.Name == name then
					frame.Visible = true
					print('mostrando: '..frame.Name)
				else
					frame.Visible = false
				end
			end
		end
	end	

	local function onClick()
		for _, btn in pairs(navBar:GetChildren()) do
			if btn:IsA('TextButton') then
				btn.MouseButton1Click:Connect(function()
					showScrolling(btn.Name)
				end)
			end
		end
	end

	task.wait(0.1)
	onClick()
end
coroutine.wrap(XKCEU_fake_script)()
local function PUTEMXJ_fake_script() -- slider.onChange 
	local script = Instance.new('LocalScript', slider)

	local slider = script.Parent
	local onClose = slider.close
	local onSize = slider.min
	
	slider.Draggable = true
	slider.Active = true
	
	onClose.MouseButton1Click:Connect(function()
		slider.Parent:Destroy()
	end)
	
	onSize.MouseButton1Click:Connect(function()
		slider.container.Visible = not slider.container.Visible
	end)
end
coroutine.wrap(PUTEMXJ_fake_script)()
local function KEID_fake_script() -- ui_library.onScrollings 
	local script = Instance.new('LocalScript', ui_library)
	local ui = script.Parent

	task.wait(0.1)
	for _, frame in pairs(ui:GetDescendants()) do
		if frame:IsA('ScrollingFrame') then
			envs.onScrollingFrame(frame)
		end
	end
end
coroutine.wrap(KEID_fake_script)()


return Library
