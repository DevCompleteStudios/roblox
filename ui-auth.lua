local function validateKey(scriptId, callback)
	local DevStudiosAuth = Instance.new("ScreenGui")
	local slide = Instance.new("Frame")
	local btn = Instance.new("TextButton")
	local container = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local auth = Instance.new("Frame")
	local authTitle = Instance.new("TextLabel")
	local textKey = Instance.new("TextBox")
	local btn_2 = Instance.new("TextButton")
	local err = Instance.new("TextLabel")


	DevStudiosAuth.Name = "DevStudiosAuth"
	DevStudiosAuth.ResetOnSpawn = false
	DevStudiosAuth.DisplayOrder = 999
	DevStudiosAuth.Parent = game.CoreGui
	DevStudiosAuth.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	slide.Name = "slide"
	slide.Parent = DevStudiosAuth
	slide.AnchorPoint = Vector2.new(0.5, 0.5)
	slide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	slide.BorderColor3 = Color3.fromRGB(0, 0, 0)
	slide.BorderSizePixel = 0
	slide.Position = UDim2.new(0.5, 0, 0.200000003, 0)
	slide.Size = UDim2.new(0.5, 0, 0.0399999991, 0)

	btn.Name = "btn"
	btn.Parent = slide
	btn.AnchorPoint = Vector2.new(1, 0.5)
	btn.BackgroundColor3 = Color3.fromRGB(0, 38, 255)
	btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
	btn.BorderSizePixel = 0
	btn.Position = UDim2.new(1, 0, 0.5, 0)
	btn.Size = UDim2.new(0.0700000003, 0, 1, 0)
	btn.Font = Enum.Font.SourceSans
	btn.Text = ""
	btn.TextColor3 = Color3.fromRGB(0, 0, 0)
	btn.TextSize = 14.000

	container.Name = "container"
	container.Parent = slide
	container.AnchorPoint = Vector2.new(0.5, 0)
	container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	container.BorderSizePixel = 0
	container.Position = UDim2.new(0.5, 0, 1, 0)
	container.Size = UDim2.new(1, 0, 14, 0)

	title.Name = "title"
	title.Parent = container
	title.AnchorPoint = Vector2.new(0.5, 0)
	title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderColor3 = Color3.fromRGB(62, 3, 255)
	title.BorderSizePixel = 2
	title.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
	title.Size = UDim2.new(0.995000005, 0, 0.0799999982, 0)
	title.Font = Enum.Font.Unknown
	title.Text = "DevComplet_Studios - Key System"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextScaled = true
	title.TextSize = 14.000
	title.TextWrapped = true

	auth.Name = "auth"
	auth.Parent = container
	auth.AnchorPoint = Vector2.new(0.5, 0.5)
	auth.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	auth.BorderColor3 = Color3.fromRGB(0, 0, 0)
	auth.BorderSizePixel = 0
	auth.Position = UDim2.new(0.5, 0, 0.600000024, 0)
	auth.Size = UDim2.new(1, 0, 0.449999988, 0)

	authTitle.Name = "authTitle"
	authTitle.Parent = auth
	authTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	authTitle.BackgroundTransparency = 1.000
	authTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	authTitle.BorderSizePixel = 0
	authTitle.Position = UDim2.new(0, 0, 0.0199999996, 0)
	authTitle.Size = UDim2.new(1, 0, 0.200000003, 0)
	authTitle.Font = Enum.Font.Unknown
	authTitle.Text = "Enter your key:"
	authTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	authTitle.TextScaled = true
	authTitle.TextSize = 14.000
	authTitle.TextWrapped = true

	textKey.Name = "textKey"
	textKey.Parent = auth
	textKey.AnchorPoint = Vector2.new(0.5, 0.5)
	textKey.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	textKey.BorderColor3 = Color3.fromRGB(0, 26, 255)
	textKey.Position = UDim2.new(0.5, 0, 0.5, 0)
	textKey.Size = UDim2.new(0.995000005, 0, 0.300000012, 0)
	textKey.Font = Enum.Font.SourceSans
	textKey.Text = "Ex. abc1-abc2-abc3-abc4"
	textKey.TextColor3 = Color3.fromRGB(162, 162, 162)
	textKey.TextScaled = true
	textKey.TextSize = 14.000
	textKey.TextWrapped = true

	btn_2.Name = "btn"
	btn_2.Parent = auth
	btn_2.AnchorPoint = Vector2.new(0.5, 0.5)
	btn_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	btn_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	btn_2.BorderSizePixel = 0
	btn_2.Position = UDim2.new(0.5, 0, 0.850000024, 0)
	btn_2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
	btn_2.Font = Enum.Font.SourceSans
	btn_2.Text = "Check Key"
	btn_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	btn_2.TextScaled = true
	btn_2.TextSize = 14.000
	btn_2.TextWrapped = true

	err.Name = "err"
	err.Parent = container
	err.AnchorPoint = Vector2.new(0.5, 0.5)
	err.BackgroundColor3 = Color3.fromRGB(186, 0, 6)
	err.BorderColor3 = Color3.fromRGB(0, 0, 0)
	err.BorderSizePixel = 0
	err.Position = UDim2.new(0.5, 0, 0.25, 0)
	err.Size = UDim2.new(1, 0, 0.100000001, 0)
	err.Visible = false
	err.Font = Enum.Font.SourceSans
	err.Text = ""
	err.TextColor3 = Color3.fromRGB(255, 255, 255)
	err.TextScaled = true
	err.TextSize = 14.000
	err.TextWrapped = true

	-- Scripts:

	local function SPTLRP_fake_script() -- btn.LocalScript 
		local script = Instance.new('LocalScript', btn)

		local btn = script.Parent
		local slide = btn.Parent
		local container = slide.container


		btn.MouseButton1Click:Connect(function()
			container.Visible = not container.Visible
		end)


	end
	coroutine.wrap(SPTLRP_fake_script)()
	local function PPQMBL_fake_script() -- DevStudiosAuth.LocalScript 
		local script = Instance.new('LocalScript', DevStudiosAuth)

		local userId = game:GetService('Players').LocalPlayer.UserId
		local HttpService = game:GetService('HttpService')
		local slide = script.Parent:WaitForChild('slide')
		local textError = slide:WaitForChild('container'):WaitForChild('err')
		local btn = slide:WaitForChild('container'):WaitForChild('auth'):WaitForChild('btn')
		local isLoading = false
		local key = nil
		local textKey = slide:WaitForChild('container'):WaitForChild('auth'):WaitForChild('textKey')
		local currentAttemps = 0
		local maxAttemps = 5

		local attempsIntentKey = 0		
		local maxAttempsIntentKey = 5

		local textKeyDefaultText = "Ex. abc1-abc2-abc3-abc4"
		local apiUrl = "https://devstudios.up.railway.app/api/auth/verify-acces-script/"..tostring(scriptId)


		local function onClose()
			slide.Parent:Destroy()
		end

		local function onLoading()
			btn.Text = "Loading..."
			isLoading = true
		end

		local function onFinishedIsLoading()
			btn.Text = "Check Key"
			isLoading = false
		end

		local function onError( text )
			textError.Text = text
			textError.Visible = true
			textKey.Text = textKeyDefaultText
		end

		local function httpClient()
			local response = request(
				{
					Url = apiUrl,
					Method = "POST",
					Headers = {
						["Content-Type"] = "application/json"
					},
					Body = HttpService:JSONEncode({key = key, robloxId = userId})
				}
			)

			return HttpService:JSONDecode(response.Body)
		end

		local function onCheck()
			local _, fallo = pcall(function()
				onLoading()

				-- hacemos la peticion HTTP
				local data = httpClient()
				local xd = HttpService:JSONEncode(data)

				print(xd)

				if data and data.err then
					if type(data.err) == 'string' then
						onError(data.err)
					else
						onError(data.err[1])
					end
					onFinishedIsLoading()
				elseif data and data.status == 200 then
					print("Succes")
					local _, fallo = pcall(function ()
						print("1")
						print("2")
						print("3")
						onClose()
						print("4")
						callback()
						print("5")
					end)
					if fallo then
						print("QUE PASA: "..fallo)
					end
				end
			end)
			if fallo then
				if attempsIntentKey <= maxAttempsIntentKey then
					attempsIntentKey = attempsIntentKey + 1
					print("Fallo intento: "..tostring(attempsIntentKey))
					task.wait(1)
					onCheck()
				else
					print(fallo)
					onError("Enter key")
					onFinishedIsLoading()
				end
			end
		end

		local function onClick()
			if isLoading then
				return
			elseif currentAttemps >= maxAttemps then
				onError("You have exceeded the limit of attempts, please come back later")
				onLoading()
				return
			elseif textKey.Text == textKeyDefaultText or #textKey.Text <= 10 or #textKey.Text >= 60 then
				onError("Enter a valid key")
				return
			end

			currentAttemps = currentAttemps + 1
			onCheck()
		end

		local function onChangeKeyValue()
			key = textKey.Text
		end

		game.Players.LocalPlayer.Idled:Connect(function()
			game:service'VirtualUser':CaptureController()
			game:service'VirtualUser':ClickButton2(Vector2.new())
		end)
		textKey:GetPropertyChangedSignal("Text"):Connect(onChangeKeyValue)
		btn.MouseButton1Click:Connect(onClick)

		onCheck()
	end
	coroutine.wrap(PPQMBL_fake_script)()
end





return function(scriptId, callback)
	local players = game:GetService('Players')

	if players.LocalPlayer then
		validateKey(scriptId, callback)
	else
		players.PlayerAdded:Connect(function(player)
			if player == players.LocalPlayer then
				validateKey(scriptId, callback)
			end
		end)
	end

end
