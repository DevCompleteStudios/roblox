local ui_library = Instance.new("ScreenGui")
local slide = Instance.new("Frame")
local title = Instance.new("TextLabel")
local onClose = Instance.new("TextButton")
local onSize = Instance.new("TextButton")
local container = Instance.new("Frame")
local navbar = Instance.new("ScrollingFrame")
local order = Instance.new("UIListLayout")
local separador = Instance.new("Frame")
local separadorFinal = Instance.new("Frame")
local menus = Instance.new("Frame")

ui_library.Name = "ui_library"
ui_library.Parent = game.CoreGui
ui_library.ResetOnSpawn = false
ui_library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

slide.Name = "slide"
slide.Parent = ui_library
slide.AnchorPoint = Vector2.new(0.5, 0.5)
slide.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
slide.BackgroundTransparency = 0.600
slide.BorderColor3 = Color3.fromRGB(0, 0, 0)
slide.BorderSizePixel = 0
slide.Position = UDim2.new(0.5, 0, 0.200000003, 0)
slide.Size = UDim2.new(0.349999994, 0, 0.0350000001, 0)

title.Name = "title"
title.Parent = slide
title.AnchorPoint = Vector2.new(0, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.00999999978, 0, 0.5, 0)
title.Size = UDim2.new(0.400000006, 0, 0.800000012, 0)
title.Font = Enum.Font.Unknown
title.Text = "DevComplete Studios"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

onClose.Name = "onClose"
onClose.Parent = slide
onClose.AnchorPoint = Vector2.new(1, 0.5)
onClose.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
onClose.BackgroundTransparency = 0.500
onClose.BorderColor3 = Color3.fromRGB(0, 0, 0)
onClose.BorderSizePixel = 0
onClose.Position = UDim2.new(0.980000019, 0, 0.5, 0)
onClose.Size = UDim2.new(0.0549999997, 0, 1, 0)
onClose.Font = Enum.Font.Roboto
onClose.Text = "X"
onClose.TextColor3 = Color3.fromRGB(255, 255, 255)
onClose.TextScaled = true
onClose.TextSize = 14.000
onClose.TextWrapped = true

onSize.Name = "onSize"
onSize.Parent = slide
onSize.AnchorPoint = Vector2.new(1, 0.5)
onSize.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
onSize.BackgroundTransparency = 0.500
onSize.BorderColor3 = Color3.fromRGB(0, 0, 0)
onSize.BorderSizePixel = 0
onSize.Position = UDim2.new(0.899999976, 0, 0.5, 0)
onSize.Size = UDim2.new(0.0549999997, 0, 1, 0)
onSize.Font = Enum.Font.Roboto
onSize.Text = "-"
onSize.TextColor3 = Color3.fromRGB(255, 255, 255)
onSize.TextScaled = true
onSize.TextSize = 14.000
onSize.TextWrapped = true

container.Name = "container"
container.Parent = slide
container.AnchorPoint = Vector2.new(0.5, 0)
container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
container.BackgroundTransparency = 0.500
container.BorderColor3 = Color3.fromRGB(0, 0, 0)
container.BorderSizePixel = 0
container.Position = UDim2.new(0.5, 0, 1, 0)
container.Size = UDim2.new(1, 0, 10, 0)

navbar.Name = "navbar"
navbar.Parent = container
navbar.Active = true
navbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
navbar.BackgroundTransparency = 0.500
navbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
navbar.BorderSizePixel = 0
navbar.Size = UDim2.new(0.25, 0, 1, 0)
navbar.CanvasSize = UDim2.new(0, 0, 1, 0)

order.Name = "order"
order.Parent = navbar
order.SortOrder = Enum.SortOrder.LayoutOrder
order.Padding = UDim.new(0.0599999987, 0)

separador.Name = "separador"
separador.Parent = navbar
separador.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
separador.BackgroundTransparency = 1.000
separador.BorderColor3 = Color3.fromRGB(0, 0, 0)
separador.BorderSizePixel = 0
separador.Size = UDim2.new(1, 0, 0.00999999978, 0)

separadorFinal.Name = "separadorFinal"
separadorFinal.Parent = navbar
separadorFinal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
separadorFinal.BackgroundTransparency = 1.000
separadorFinal.BorderColor3 = Color3.fromRGB(0, 0, 0)
separadorFinal.BorderSizePixel = 0
separadorFinal.LayoutOrder = 10000
separadorFinal.Size = UDim2.new(1, 0, 0.00999999978, 0)

menus.Name = "menus"
menus.Parent = container
menus.AnchorPoint = Vector2.new(1, 0.5)
menus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menus.BackgroundTransparency = 1.000
menus.BorderColor3 = Color3.fromRGB(0, 0, 0)
menus.BorderSizePixel = 0
menus.Position = UDim2.new(1, 0, 0.5, 0)
menus.Size = UDim2.new(0.75, 0, 1, 0)



local components = {

	createLink = function(parent, name)
		local autoFarm = Instance.new("TextButton")

		autoFarm.Name = name
		autoFarm.Parent = parent
		autoFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		autoFarm.BackgroundTransparency = 1.000
		autoFarm.BorderColor3 = Color3.fromRGB(0, 0, 0)
		autoFarm.BorderSizePixel = 0
		autoFarm.LayoutOrder = 1
		autoFarm.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
		autoFarm.Font = Enum.Font.Unknown
		autoFarm.Text = "Link1"
		autoFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
		autoFarm.TextScaled = true
		autoFarm.TextSize = 14.000
		autoFarm.TextWrapped = true

		return autoFarm
	end,

	createBorder = function(parent, rounded)
		rounded = rounded or 0.15
		local border = Instance.new("UICorner")
		border.CornerRadius = UDim.new(rounded, 0)
		border.Name = "border"
		border.Parent = parent
	end,

	alert = function(message, title)
		local StarterGui = game:GetService("StarterGui")

		-- Enviar una notificación
		StarterGui:SetCore("SendNotification", {
			Title = title or "Alert!", -- Título de la notificación
			Text = message, -- Texto principal
			Duration = 7, -- Duración en segundos
			Button1 = "Accept", -- Botón opcional
			Button2 = "Close", -- Segundo botón opcional
		})
	end,

	simpleButton = function(parent, text)
		local value = Instance.new("TextButton")

		value.Name = text
		value.Parent = parent
		value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Size = UDim2.new(0.92, 0, 0.18, 0)
		value.Font = Enum.Font.Unknown
		value.Text = text
		value.TextColor3 = Color3.fromRGB(0, 0, 0)
		value.TextScaled = true
		value.TextSize = 14.000
		value.TextWrapped = true
		return value
	end,

	orderScrollingFrame = function(scrollingFrame, alginItems, padding, automaticOrder)
		automaticOrder = automaticOrder or Enum.AutomaticSize.Y
		padding = padding or 0.03
		alginItems = alginItems or Enum.HorizontalAlignment.Center

		local order = Instance.new("UIListLayout")
		order.Name = "order"
		order.Parent = scrollingFrame
		order.HorizontalAlignment = alginItems
		order.SortOrder = Enum.SortOrder.LayoutOrder
		order.Padding = UDim.new(padding, 0)

		scrollingFrame.AutomaticCanvasSize = automaticOrder
	end,



}


local logic = {

	window = function(menus, navBar, btn)
		local function onShowWindow(name)
			for _, frame in pairs(menus:GetChildren()) do
				if frame:IsA('ScrollingFrame') then
					if frame.Name == name then
						frame.Visible = true
					else
						frame.Visible = false
					end
				end
			end
		end

		local function onClick(btn)
			btn.TextTransparency = 0
			onShowWindow(btn.Name)

			for _, b in pairs(navBar:GetChildren()) do
				if b:IsA('TextButton') and b.Name ~= btn.Name then
					b.TextTransparency = 0.7
				end
			end
		end


		local function newEvent(btn)
			if btn:IsA('TextButton') then
				btn.MouseButton1Click:Connect(function()
					onClick(btn)
				end)

				btn.TextTransparency = 0.7
			end
		end

		newEvent(btn)
	end,

	text = function(data, txt)
		return {
			updateText = function(text)
				txt.Text = text
			end,
		}
	end,

	button = function(button, data)
		local click = button:WaitForChild('event'):WaitForChild('click')
		local title = button:WaitForChild('title')

		title.Text = data.title

		local function handleCallback()
			local _, err = pcall(function()
				task.spawn(data.callback)
			end)

			if err and data.onError then
				data.onError(err)
			end
		end

		click.MouseButton1Click:Connect(handleCallback)
	end,

	input = function(input, data)
		local value = input:WaitForChild('value')
		local valueText = value:WaitForChild('text')
		local validations = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('validations'))
		local components = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('components'))

		local default = 'Enter value'
		local currentValue = data.defaultValue or default
		valueText.Text = currentValue

		local errors = {
			textErrr = nil,
			numberErr = nil
		}

		local function validateText()
			if data.inputType == 'number' or not data.validations then
				errors.textErrr = nil
				return
			end

			local n = #valueText.Text

			local find = validations.findText(valueText.Text, data.validations.excludes)
			local validateLength = validations.length(valueText.Text, data.validations.minLength, data.validations.maxLength)


			if validateLength then
				errors.textErrr = validateLength
			elseif find then
				errors.textErrr = 'The text: "'..find..'" is not allowed'
			else
				errors.textErrr = nil
			end
		end

		local function validateNumber()
			if data.inputType ~= 'number' or not data.validations then return end

			local n = tonumber(valueText.Text) or 0
			local find = validations.findText(n, data.validations.excludes)
			local range = validations.limit(n, data.validations.minValue, data.validations.maxValue)


			if find then
				errors.numberErr = 'The number: "'..find..'" is not allowed'
			elseif not range then
				errors.numberErr = 'Enter value in range of: '..data.validations.minValue..' - '..data.validations.maxValue
			else
				errors.numberErr = nil
			end

		end

		local function onSucces()
			if data.onSucces then
				if currentValue == default then
					task.spawn(function()
						data.onSucces('')
					end)
				else
					task.spawn(function()
						data.onSucces(currentValue)
					end)
				end
			end
		end

		local function onSend()
			valueText.TextTransparency = 0.5

			if errors.numberErr or errors.textErrr then
				if errors.numberErr then
					components.alert(errors.numberErr)
				end

				if errors.textErrr then
					components.alert(errors.textErrr)
				end
			else
				currentValue = valueText.Text
				if data.onSucces then
					task.spawn(function()
						data.onSucces(currentValue)
					end)
				end
			end

			valueText.Text = currentValue
		end

		local function onWrite()
			if data.inputType == 'number' then
				valueText.Text = valueText.Text:gsub("%D", "")
			end

			-- aplicar validaciones
			validateText()
			validateNumber()
		end


		valueText.Changed:Connect(function(property)
			if property == "Text" then
				onWrite()
			elseif property == 'CursorPosition' then
				valueText.TextTransparency = 0
			end
		end)

		valueText.FocusLost:Connect(onSend)
	end,

	slider = function(slider, data)
		local slide = slider:WaitForChild('slide')
		local valueText = slide:WaitForChild('value')
		local btn = slide:WaitForChild('btn')

		local validations = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('validations'))

		local inputService = game:GetService('UserInputService')
		local onMove = false
		local newValue = data.value
		local maxVal = data.maxValue or (data.minValue * 10)

		local function positionToValue(posX)
			local relativeX = math.clamp(posX - slide.AbsolutePosition.X, 0, slide.AbsoluteSize.X)
			local fraction = relativeX / slide.AbsoluteSize.X
			local val = data.minValue + (maxVal - data.minValue) * fraction
			return math.floor(val), fraction
		end

		local function updateSlider(input)
			local pos = input.Position
			newValue, fraction = positionToValue(pos.X)

			local percent = math.floor(fraction * 100)
			valueText.Text = tostring( validations.abreviateNumber(newValue) ) .. " / " .. tostring(percent) .. "%"
			local newX = fraction * slide.AbsoluteSize.X
			btn.Size = UDim2.new(0, math.max(20, newX), btn.Size.Y.Scale, btn.Size.Y.Offset)

			if data.onMove then
				data.onMove(newValue)
			end
		end

		btn.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				onMove = true
			end
		end)

		inputService.InputEnded:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and onMove then
				onMove = false

				if data.onFinishedMove then
					data.onFinishedMove(newValue)
				end
			end
		end)

		inputService.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and onMove then
				updateSlider(input)
			end
		end)

		do
			local fraction = (newValue - data.minValue) / (maxVal - data.minValue)
			local initX = fraction * slide.AbsoluteSize.X
			btn.Size = UDim2.new(0, math.max(20, initX), btn.Size.Y.Scale, btn.Size.Y.Offset)

			local percent = math.floor(fraction * 100)
			valueText.Text = tostring( validations.abreviateNumber(newValue) ) .. " / " .. tostring(percent) .. "%"
		end
	end,

	option = function(opt, data)
		local btn = opt:WaitForChild('btn')
		local circle = btn:WaitForChild('circle')
		local title = opt:WaitForChild('title')

		local posDisabled = UDim2.new(0, 0,0.5, 0)
		local posActive = UDim2.new(0.6, 0,0.5, 0)
		local colorActive = Color3.new(0, 0.317647, 1)
		local colorDisabled = Color3.new(0.435294, 0.435294, 0.435294)
		local timer = 0.1


		title.Text = data.title
		local newValue = data.value

		local function updateStatus()
			if newValue then
				circle:TweenPosition(posActive, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, timer)
				circle.BackgroundColor3 = colorActive
				title.TextTransparency = 0
			else
				circle:TweenPosition(posDisabled, Enum.EasingDirection.Out, Enum.EasingStyle.Linear, timer)
				circle.BackgroundColor3 = colorDisabled
				title.TextTransparency = 0.5
			end
		end

		local function onClick()
			newValue = not newValue
			updateStatus()

			if data.onChangeValue then
				task.spawn(function()
					data.onChangeValue(newValue)
				end)
			end
		end

		updateStatus()
		btn.MouseButton1Click:Connect(onClick)
	end,

	userList = function(scrolling, components, data)
		local userList = scrolling:WaitForChild('users')
		local texts = scrolling:WaitForChild('texts')
		local selectedUserText = texts:WaitForChild('currentUser')
		local countUserText = texts:WaitForChild('totalUsers')

		local players = game:GetService('Players')
		local player = players.LocalPlayer
		local userSelected:Player = nil
		local defaultColor = Color3.fromRGB(255, 255, 255)
		local selectedColor = Color3.fromRGB(0, 157, 255)


		local function findBtnUserByName(name)
			for _, btn in pairs(userList:GetChildren()) do
				if btn.Name == name then
					return btn
				end
			end
			return nil
		end

		local function cancelSelectedUser()
			if not userSelected then return end

			selectedUserText.Text = 'Here you will see the user you have selected.'

			local btn = findBtnUserByName(userSelected.Name)
			if btn then
				btn.BackgroundColor3 = defaultColor
			end
			userSelected = nil

			if data.onChangeUser then
				task.spawn(function()
					data.onChangeUser(nil)
				end)
			end
		end

		local function onSelectedUser(name)
			for _, plr in pairs(players:GetPlayers()) do
				if plr.Name == name then
					userSelected = plr
					selectedUserText.Text = '('..plr.DisplayName..') '..plr.Name

					if data.onChangeUser then
						task.spawn(function()
							data.onChangeUser(plr)
						end)
					end

					local btn = findBtnUserByName(name)
					btn.BackgroundColor3 = selectedColor
					break
				end
			end
		end

		local function addPlayer(plr:Player)
			local exists = findBtnUserByName(plr.Name)
			if exists then return end

			if data.onJoinedNewUser then
				task.spawn(function()
					data.onJoinedNewUser(plr)
				end)
			end

			local userBtn = components.simpleButton(userList, plr.Name)
			userBtn.BackgroundColor3 = defaultColor
			countUserText.Text = '#'..tostring(#players:GetPlayers())

			-- manejar evento para activar un usuario y demás.
			userBtn.MouseButton1Click:Connect(function()
				if userSelected and userSelected.Name == plr.Name then
					cancelSelectedUser()
				else
					if userSelected then
						local btn = findBtnUserByName(userSelected.Name)

						if btn then
							btn.BackgroundColor3 = defaultColor
						end
					end

					onSelectedUser(plr.Name)
				end
			end)
		end

		local function removePlayer(plr:Player)
			local exists = findBtnUserByName(plr.Name)
			if not exists then return end

			if data.onLeaveUser then
				task.spawn(function()
					data.onLeaveUser(plr)
				end)
			end

			exists:Destroy()
			countUserText.Text = '#'..tostring(#players:GetPlayers())

			if userSelected.Name == exists.Name then
				cancelSelectedUser()
			end
		end


		for _, plr in pairs(players:GetPlayers()) do
			if plr.UserId == player.UserId then
				continue
			end
			addPlayer(plr)
		end

		players.PlayerAdded:Connect(addPlayer)
		players.PlayerRemoving:Connect(removePlayer)
	end,
}



local validations = {

	limit = function( value, minValue, maxValue )

		if minValue and maxValue then
			return maxValue > minValue and maxValue > value and value >= minValue
		elseif maxValue then
			return value < maxValue
		elseif minValue then
			return value > minValue
		end

		return false
	end,

	length = function(text, minSize, maxSize)
		local n = #text

		if maxSize and n > maxSize then
			return 'The text is too long'
		elseif minSize and n < minSize then
			return 'The text is too short'
		end

		return nil
	end,

	findText = function(text, values, isValidationNumber)
		if not values then return nil end

		for _, c in pairs(values) do
			if isValidationNumber and tonumber(c) then
				if string.find(tostring(text), tostring(c)) then
					return tonumber(c)
				end
			else
				if string.find(text, tostring(c)) then
					return tostring(c)
				end
			end
		end

		return nil
	end,

	abreviateNumber = function(number)
		local minValue = 10000

		if number < minValue then
			return tostring( math.round(number) )
		end

		local abbreviations = {'', "K", "M", "B", "T"}
		local index = 1

		while number >= minValue and index < #abbreviations do
			number = number / 1000
			index = index + 1
		end

		if number % 1 == 0 then
			return tostring(number) .. abbreviations[index]
		else
			return string.format("%.1f", number) .. abbreviations[index]
		end
	end,
}


local components = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('components'))
local logic = require(game:GetService('StarterGui'):WaitForChild('ui_library'):WaitForChild('logic'))




local library = {

	window = function(name, menus, navbar)
		local window = Instance.new('ScrollingFrame')
		window.Name = string.lower(name)
		window.Parent = menus
		window.Active = true
		window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		window.BackgroundTransparency = 0.700
		window.BorderColor3 = Color3.fromRGB(0, 0, 0)
		window.BorderSizePixel = 0
		window.Size = UDim2.new(1, 0, 1, 0)
		window.CanvasPosition = Vector2.new(0, 395.093994)
		window.CanvasSize = UDim2.new(0, 0, 1, 0)
		window.Visible = false

		local link = Instance.new("TextButton")

		link.Name = string.lower(name)
		link.Parent = navbar
		link.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		link.BackgroundTransparency = 1.000
		link.BorderColor3 = Color3.fromRGB(0, 0, 0)
		link.BorderSizePixel = 0
		link.LayoutOrder = 1
		link.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
		link.Font = Enum.Font.Roboto
		link.Text = name
		link.TextColor3 = Color3.fromRGB(255, 255, 255)
		link.TextScaled = true
		link.TextSize = 14.000
		link.TextWrapped = true
		link.Visible = true

		logic.window(menus, navbar, link)
		components.orderScrollingFrame(window, Enum.HorizontalAlignment.Center, 0.04, Enum.AutomaticSize.Y)
		return window
	end,

	text = function(window, data)
		local txt = Instance.new("TextLabel")

		txt.Name = "txt"
		txt.Parent = window
		txt.BackgroundColor3 = Color3.fromRGB(17, 0, 172)
		txt.BorderColor3 = Color3.fromRGB(0, 0, 0)
		txt.BorderSizePixel = 0
		txt.LayoutOrder = 1
		txt.Size = UDim2.new(0.9, 0, 0.08, 0)
		txt.Font = Enum.Font.Roboto
		txt.TextColor3 = Color3.fromRGB(255, 255, 255)
		txt.TextScaled = true
		txt.TextSize = 14.000
		txt.TextWrapped = true
		txt.Text = data.text

		components.createBorder(txt, 0.15)
		return logic.text(data, txt)
	end,

	button = function(window, data)
		local button = Instance.new("Frame")
		local title = Instance.new("TextLabel")
		local event = Instance.new("Frame")
		local click = Instance.new("TextButton")

		button.Name = data.title
		button.Parent = window
		button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		button.BorderSizePixel = 0
		button.LayoutOrder = 1
		button.Size = UDim2.new(0.920000017, 0, 0.119999997, 0)

		title.Name = "title"
		title.Parent = button
		title.AnchorPoint = Vector2.new(0, 0.5)
		title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		title.BackgroundTransparency = 1.000
		title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderSizePixel = 0
		title.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
		title.Size = UDim2.new(0.550000012, 0, 0.800000012, 0)
		title.Font = Enum.Font.Unknown
		title.Text = data.title
		title.TextColor3 = Color3.fromRGB(0, 123, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true
		title.TextXAlignment = Enum.TextXAlignment.Left

		event.Name = "event"
		event.Parent = button
		event.AnchorPoint = Vector2.new(1, 0.5)
		event.BackgroundColor3 = Color3.fromRGB(0, 39, 165)
		event.BorderColor3 = Color3.fromRGB(0, 0, 0)
		event.BorderSizePixel = 0
		event.Position = UDim2.new(0.899999976, 0, 0.5, 0)
		event.Size = UDim2.new(0.300000012, 0, 0.800000012, 0)

		click.Name = "click"
		click.Parent = event
		click.AnchorPoint = Vector2.new(0.5, 0.5)
		click.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		click.BorderColor3 = Color3.fromRGB(0, 0, 0)
		click.BorderSizePixel = 0
		click.Position = UDim2.new(0.5, 0, 0.5, 0)
		click.Size = UDim2.new(0.959999979, 0, 0.899999976, 0)
		click.Font = Enum.Font.Unknown
		click.Text = "Click"
		click.TextColor3 = Color3.fromRGB(255, 255, 255)
		click.TextScaled = true
		click.TextSize = 14.000
		click.TextWrapped = true

		components.createBorder(button, 0.2)
		components.createBorder(event, 0.2)
		components.createBorder(click, 0.2)

		logic.button(button, data)
	end,

	input = function(window, data)
		local input = Instance.new("Frame")
		local title = Instance.new("TextLabel")
		local value = Instance.new("Frame")
		local text = Instance.new("TextBox")

		input.Name = "input"
		input.Parent = window
		input.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		input.BorderColor3 = Color3.fromRGB(0, 0, 0)
		input.BorderSizePixel = 0
		input.LayoutOrder = 1
		input.Size = UDim2.new(0.920000017, 0, 0.25999999, 0)

		title.Name = "title"
		title.Parent = input
		title.AnchorPoint = Vector2.new(0.5, 0)
		title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderSizePixel = 0
		title.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		title.Size = UDim2.new(0.800000012, 0, 0.25, 0)
		title.Font = Enum.Font.Unknown
		title.Text = data.title
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true

		value.Name = "value"
		value.Parent = input
		value.AnchorPoint = Vector2.new(0.5, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(0, 47, 200)
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Position = UDim2.new(0.5, 0, 0.699999988, 0)
		value.Size = UDim2.new(0.939999998, 0, 0.360000014, 0)

		text.Name = "text"
		text.Parent = value
		text.AnchorPoint = Vector2.new(0.5, 0.5)
		text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		text.BorderColor3 = Color3.fromRGB(0, 0, 0)
		text.BorderSizePixel = 0
		text.Position = UDim2.new(0.5, 0, 0.5, 0)
		text.Size = UDim2.new(0.980000019, 0, 0.879999995, 0)
		text.Font = Enum.Font.Unknown
		text.Text = ""
		text.TextColor3 = Color3.fromRGB(255, 255, 255)
		text.TextScaled = true
		text.TextSize = 14.000
		text.TextTransparency = 0.500
		text.TextWrapped = true

		logic.input(input, data)
	end,

	slider = function(window, data)
		local slider = Instance.new("Frame")
		local title = Instance.new("TextLabel")
		local slide = Instance.new("Frame")
		local btn = Instance.new("TextButton")
		local value = Instance.new("TextLabel")


		slider.Name = "slider"
		slider.Parent = window
		slider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
		slider.BorderSizePixel = 0
		slider.LayoutOrder = 1
		slider.Size = UDim2.new(0.920000017, 0, 0.25999999, 0)

		title.Name = "title"
		title.Parent = slider
		title.AnchorPoint = Vector2.new(0.5, 0)
		title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderSizePixel = 0
		title.Position = UDim2.new(0.5, 0, 0.100000001, 0)
		title.Size = UDim2.new(0.800000012, 0, 0.25, 0)
		title.Font = Enum.Font.Unknown
		title.Text = data.title
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true

		slide.Name = "slide"
		slide.Parent = slider
		slide.AnchorPoint = Vector2.new(0.5, 0.5)
		slide.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
		slide.BorderColor3 = Color3.fromRGB(0, 0, 0)
		slide.BorderSizePixel = 0
		slide.Position = UDim2.new(0.5, 0, 0.699999988, 0)
		slide.Size = UDim2.new(0.939999998, 0, 0.360000014, 0)

		btn.Name = "btn"
		btn.Parent = slide
		btn.AnchorPoint = Vector2.new(0, 0.5)
		btn.BackgroundColor3 = Color3.fromRGB(0, 38, 143)
		btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		btn.BorderSizePixel = 0
		btn.Position = UDim2.new(0, 0, 0.5, 0)
		btn.Size = UDim2.new(0.5, 0, 1, 0)
		btn.Font = Enum.Font.SourceSans
		btn.Text = ""
		btn.TextColor3 = Color3.fromRGB(0, 0, 0)
		btn.TextSize = 14.000

		value.Name = "value"
		value.Parent = slide
		value.AnchorPoint = Vector2.new(0.5, 0.5)
		value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		value.BackgroundTransparency = 1.000
		value.BorderColor3 = Color3.fromRGB(0, 0, 0)
		value.BorderSizePixel = 0
		value.Position = UDim2.new(0.5, 0, 0.5, 0)
		value.Size = UDim2.new(0.200000003, 0, 0.600000024, 0)
		value.Font = Enum.Font.Unknown
		value.Text = "28% / 100k"
		value.TextColor3 = Color3.fromRGB(255, 255, 255)
		value.TextScaled = true
		value.TextSize = 14.000
		value.TextWrapped = true

		components.createBorder(btn, 0.8)
		components.createBorder(slide, 1)
		logic.slider(slider, data)
	end,

	option = function(window, data)
		local option = Instance.new("Frame")
		local title = Instance.new("TextLabel")
		local btn = Instance.new("TextButton")
		local circle = Instance.new("Frame")

		option.Name = "option"
		option.Parent = window
		option.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		option.BorderColor3 = Color3.fromRGB(0, 0, 0)
		option.BorderSizePixel = 0
		option.LayoutOrder = 1
		option.Size = UDim2.new(0.920000017, 0, 0.119999997, 0)

		title.Name = "title"
		title.Parent = option
		title.AnchorPoint = Vector2.new(0, 0.5)
		title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		title.BackgroundTransparency = 1.000
		title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		title.BorderSizePixel = 0
		title.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
		title.Size = UDim2.new(0.550000012, 0, 0.800000012, 0)
		title.Font = Enum.Font.Unknown
		title.Text = "Auto Farm"
		title.TextColor3 = Color3.fromRGB(0, 123, 255)
		title.TextScaled = true
		title.TextSize = 14.000
		title.TextWrapped = true
		title.TextXAlignment = Enum.TextXAlignment.Left

		btn.Name = "btn"
		btn.Parent = option
		btn.AnchorPoint = Vector2.new(1, 0.5)
		btn.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
		btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
		btn.BorderSizePixel = 0
		btn.Position = UDim2.new(0.899999976, 0, 0.5, 0)
		btn.Size = UDim2.new(0.140000001, 0, 0.5, 0)
		btn.Font = Enum.Font.SourceSans
		btn.Text = ""
		btn.TextColor3 = Color3.fromRGB(0, 0, 0)
		btn.TextSize = 14.000

		circle.Name = "circle"
		circle.Parent = btn
		circle.AnchorPoint = Vector2.new(0, 0.5)
		circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		circle.BorderSizePixel = 0
		circle.Position = UDim2.new(0.600000024, 0, 0.5, 0)
		circle.Size = UDim2.new(0.449999988, 0, 1.29999995, 0)

		components.createBorder(btn, 1)
		components.createBorder(circle, 1)
		logic.option(option, data)
	end,

	userList = function(window, data)
		local userList = Instance.new("Frame")
		local texts = Instance.new("Frame")
		local currentUser = Instance.new("TextLabel")
		local totalUsers = Instance.new("TextLabel")
		local users = Instance.new("ScrollingFrame")
		local userName = Instance.new("TextButton")

		userList.Name = "userList"
		userList.Parent = window
		userList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		userList.BorderColor3 = Color3.fromRGB(0, 0, 0)
		userList.BorderSizePixel = 0
		userList.LayoutOrder = 1
		userList.Size = UDim2.new(0.920000017, 0, 0.600000024, 0)

		texts.Name = "texts"
		texts.Parent = userList
		texts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		texts.BackgroundTransparency = 1.000
		texts.BorderColor3 = Color3.fromRGB(0, 0, 0)
		texts.BorderSizePixel = 0
		texts.Size = UDim2.new(1, 0, 0.150000006, 0)

		currentUser.Name = "currentUser"
		currentUser.Parent = texts
		currentUser.AnchorPoint = Vector2.new(0, 0.5)
		currentUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		currentUser.BackgroundTransparency = 1.000
		currentUser.BorderColor3 = Color3.fromRGB(0, 0, 0)
		currentUser.BorderSizePixel = 0
		currentUser.Position = UDim2.new(0.00999999978, 0, 0.5, 0)
		currentUser.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
		currentUser.Font = Enum.Font.Unknown
		currentUser.Text = "Here you will see the user you have selected."
		currentUser.TextColor3 = Color3.fromRGB(255, 255, 255)
		currentUser.TextScaled = true
		currentUser.TextSize = 14.000
		currentUser.TextWrapped = true
		currentUser.TextXAlignment = Enum.TextXAlignment.Left

		totalUsers.Name = "totalUsers"
		totalUsers.Parent = texts
		totalUsers.AnchorPoint = Vector2.new(1, 0.5)
		totalUsers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		totalUsers.BackgroundTransparency = 1.000
		totalUsers.BorderColor3 = Color3.fromRGB(0, 0, 0)
		totalUsers.BorderSizePixel = 0
		totalUsers.Position = UDim2.new(1, 0, 0.5, 0)
		totalUsers.Size = UDim2.new(0.100000001, 0, 0.800000012, 0)
		totalUsers.Font = Enum.Font.Unknown
		totalUsers.Text = "#1"
		totalUsers.TextColor3 = Color3.fromRGB(255, 255, 255)
		totalUsers.TextScaled = true
		totalUsers.TextSize = 14.000
		totalUsers.TextTransparency = 0.500
		totalUsers.TextWrapped = true

		users.Name = "users"
		users.Parent = userList
		users.Active = true
		users.AnchorPoint = Vector2.new(0.5, 1)
		users.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		users.BorderColor3 = Color3.fromRGB(100, 1, 199)
		users.Position = UDim2.new(0.5, 0, 1, 0)
		users.Size = UDim2.new(1, 0, 0.839999974, 0)
		users.CanvasSize = UDim2.new(0, 0, 1, 0)

		userName.Name = "userName"
		userName.Parent = users
		userName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		userName.BorderColor3 = Color3.fromRGB(0, 0, 0)
		userName.BorderSizePixel = 0
		userName.Size = UDim2.new(0.899999976, 0, 0.25, 0)
		userName.Font = Enum.Font.Unknown
		userName.Text = "There are currently no users on the server!"
		userName.TextColor3 = Color3.fromRGB(0, 0, 0)
		userName.TextScaled = true
		userName.TextSize = 14.000
		userName.TextWrapped = true

		components.orderScrollingFrame(users, Enum.HorizontalAlignment.Center, 0.03, Enum.AutomaticSize.Y)
		logic.userList(userList, components, data)
	end,

}


local function GDZJLVC_fake_script() -- slide.logic 
	local script = Instance.new('LocalScript', slide)

	local slide = script.Parent
	local onClose = slide:WaitForChild('onClose')
	local onSize = slide:WaitForChild('onSize')
	local container = slide:WaitForChild('container')
	
	
	slide.Draggable = true
	slide.Active = true
	
	
	local function closeWindow()
		slide.Parent:Destroy()
	end
	
	local function sizeWindow()
		container.Visible = not container.Visible
	end
	
	
	
	onClose.MouseButton1Click:Connect(closeWindow)
	onSize.MouseButton1Click:Connect(sizeWindow)
	
end

GDZJLVC_fake_script()


-- Programacion orientada a objetos
local poo = {}
poo.__index = poo


function poo:text(data)
	-- aplicar validaciones
	return library.text(self.window, data)
end

function poo:button(data)
	-- aplicar validaciones
	return library.button(self.window, data)
end

function poo:slider(data)
	return library.slider(self.window, data)
end

function poo:input(data)
	return library.input(self.window, data)
end

function poo:option(data)
	library.option(self.window, data)
end

function poo:UserList(data)
	library.userList(self.window, data)
end

function new(name: string)
	-- aplicar validaciones
	local self = setmetatable({}, poo)

	self.window = library.window(name, menus, navbar)
	self.name = name

	return self
end


return {
	new = function(name)
		return new(name)
	end,
}


-- example
--local textData = {
--	text = 'Mi message'
--}

--local dataButton = {
--	title = 'Punch',

--	callback = function()
--		print('click!')
--	end,

--	onError = function(err)
--		print('Error! '..err)
--	end,
--}

--local inputData = {
--	title = 'Enter your age', -- required
--	inputType = 'number', -- optional (default 'text')
--	defaultValue = 100000, -- optional

--	validations = { -- all optional
--		minValue = 100, -- only inputType number
--		maxValue = 10000000, -- only inputType number

--		minLength = 10, -- only inputType text
--		maxLength = 100, -- only inputType text

--		excludes = {100, 200, 300, 'Hello World', 'Olaf'}, -- What you don't want the text to have.
--	},

--	onSucces = function(value) -- optional
--		print('Your age is: '..value)
--	end,
--}

--local sliderData = {
--	title = 'Stats TP Bills Planet',
--	value = 10000000,
--	minValue = 10000000,
--	maxValue = 300000000, -- optional (default = minValue x 10)

--	onMove = function(currentValue) -- optional
--		print("onMove: ", currentValue)
--	end,

--	onFinishedMove = function(currentValue) -- optional
--		print("onFinishedMove: ", currentValue)
--	end,
--}

--local optionData = {
--	value = true,
--	title = 'Auto Attack',

--	onChangeValue = function(value)
--		print('New value: '..tostring(value))
--	end
--}

--local userListData = {
--	borderUsers = false,

--	onChangeUser = function(user:Player)
--		print('New user selected: '..user.Name)
--	end,

--	onLeaveUser = function(user:Player)
--		print('Bye: '..user.Name)
--	end,

--	onJoinedNewUser = function(user:Player)
--		print('Welcone: '..user.Name)
--	end,
--}


--local autoFarm = new('Auto farm')

--local autoFarmInfo = autoFarm:text(textData)
--autoFarm:button(dataButton)
--autoFarm:input(inputData)
--autoFarm:slider(sliderData)
--autoFarm:option(optionData)
--autoFarm:UserList(userListData)


--task.spawn(function()
--	for i = 1, 100, 1 do
--		autoFarmInfo.updateText('Text updated '..i)
--		task.wait(0.1)
--	end
--end)





