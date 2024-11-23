local onKey = function(scriptId, callbackSucces)
	local dvs_keysystem = Instance.new("ScreenGui")
	local size = Instance.new("Frame")
	local close = Instance.new("TextButton")
	local container = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local keySystem = Instance.new("TextBox")
	local links = Instance.new("Frame")
	local discord = Instance.new("TextButton")
	local youtube = Instance.new("TextButton")
	local page = Instance.new("TextButton")
	local send = Instance.new("TextButton")
	local messageError = Instance.new("TextLabel")

	dvs_keysystem.Name = "dvs_key-system"
	dvs_keysystem.Parent = game:WaitForChild('CoreGui')
	dvs_keysystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	size.Name = "size"
	size.Parent = dvs_keysystem
	size.AnchorPoint = Vector2.new(0.5, 0.5)
	size.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	size.BorderColor3 = Color3.fromRGB(0, 0, 0)
	size.BorderSizePixel = 0
	size.Position = UDim2.new(0.5, 0, 0.25, 0)
	size.Size = UDim2.new(0.5, 0, 0.0350000001, 0)

	close.Name = "close"
	close.Parent = size
	close.AnchorPoint = Vector2.new(1, 0.5)
	close.BackgroundColor3 = Color3.fromRGB(26, 255, 0)
	close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	close.BorderSizePixel = 0
	close.Position = UDim2.new(1, 0, 0.5, 0)
	close.Size = UDim2.new(0.0599999987, 0, 1, 0)
	close.Font = Enum.Font.SourceSans
	close.Text = ""
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextSize = 14.000

	container.Name = "container"
	container.Parent = size
	container.AnchorPoint = Vector2.new(0.5, 0)
	container.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	container.BorderSizePixel = 0
	container.Position = UDim2.new(0.5, 0, 1, 0)
	container.Size = UDim2.new(1, 0, 12, 0)

	title.Name = "title"
	title.Parent = container
	title.AnchorPoint = Vector2.new(0.5, 0.5)
	title.BackgroundColor3 = Color3.fromRGB(52, 0, 68)
	title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	title.BorderSizePixel = 0
	title.Position = UDim2.new(0.5, 0, 0.100000001, 0)
	title.Size = UDim2.new(1, 0, 0.100000001, 0)
	title.Font = Enum.Font.SourceSansBold
	title.Text = "Key System - DevCompleteStudios"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextScaled = true
	title.TextSize = 14.000
	title.TextWrapped = true

	keySystem.Name = "keySystem"
	keySystem.Parent = container
	keySystem.AnchorPoint = Vector2.new(0.5, 0.5)
	keySystem.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	keySystem.BorderColor3 = Color3.fromRGB(255, 255, 255)
	keySystem.Position = UDim2.new(0.5, 0, 0.300000012, 0)
	keySystem.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)
	keySystem.Font = Enum.Font.SourceSansBold
	keySystem.Text = ""
	keySystem.TextColor3 = Color3.fromRGB(255, 255, 255)
	keySystem.TextScaled = true
	keySystem.TextSize = 14.000
	keySystem.TextWrapped = true

	links.Name = "links"
	links.Parent = container
	links.AnchorPoint = Vector2.new(0.5, 0.5)
	links.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	links.BorderColor3 = Color3.fromRGB(0, 81, 255)
	links.BorderSizePixel = 2
	links.Position = UDim2.new(0.5, 0, 0.870000005, 0)
	links.Size = UDim2.new(0.995000005, 0, 0.25, 0)

	discord.Name = "discord"
	discord.Parent = links
	discord.AnchorPoint = Vector2.new(0.5, 0.5)
	discord.BackgroundColor3 = Color3.fromRGB(0, 17, 255)
	discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
	discord.BorderSizePixel = 0
	discord.Position = UDim2.new(0.5, 0, 0.5, 0)
	discord.Size = UDim2.new(0.200000003, 0, 0.400000006, 0)
	discord.Font = Enum.Font.SourceSansBold
	discord.Text = "Discord"
	discord.TextColor3 = Color3.fromRGB(255, 255, 255)
	discord.TextScaled = true
	discord.TextSize = 14.000
	discord.TextWrapped = true

	youtube.Name = "youtube"
	youtube.Parent = links
	youtube.AnchorPoint = Vector2.new(0.5, 0.5)
	youtube.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	youtube.BorderColor3 = Color3.fromRGB(0, 0, 0)
	youtube.BorderSizePixel = 0
	youtube.Position = UDim2.new(0.200000003, 0, 0.5, 0)
	youtube.Size = UDim2.new(0.200000003, 0, 0.400000006, 0)
	youtube.Font = Enum.Font.SourceSansBold
	youtube.Text = "Youtube"
	youtube.TextColor3 = Color3.fromRGB(255, 255, 255)
	youtube.TextScaled = true
	youtube.TextSize = 14.000
	youtube.TextWrapped = true

	page.Name = "page"
	page.Parent = links
	page.AnchorPoint = Vector2.new(0.5, 0.5)
	page.BackgroundColor3 = Color3.fromRGB(165, 0, 116)
	page.BorderColor3 = Color3.fromRGB(0, 0, 0)
	page.BorderSizePixel = 0
	page.Position = UDim2.new(0.800000012, 0, 0.5, 0)
	page.Size = UDim2.new(0.200000003, 0, 0.400000006, 0)
	page.Font = Enum.Font.SourceSansBold
	page.Text = "Buy script"
	page.TextColor3 = Color3.fromRGB(255, 255, 255)
	page.TextScaled = true
	page.TextSize = 14.000
	page.TextWrapped = true

	send.Name = "send"
	send.Parent = container
	send.AnchorPoint = Vector2.new(0.5, 0.5)
	send.BackgroundColor3 = Color3.fromRGB(34, 255, 0)
	send.BorderColor3 = Color3.fromRGB(0, 0, 0)
	send.BorderSizePixel = 0
	send.Position = UDim2.new(0.5, 0, 0.449999988, 0)
	send.Size = UDim2.new(0.400000006, 0, 0.100000001, 0)
	send.Font = Enum.Font.SourceSans
	send.Text = "Loading..."
	send.TextColor3 = Color3.fromRGB(0, 0, 0)
	send.TextScaled = true
	send.TextSize = 14.000
	send.TextWrapped = true

	messageError.Name = "messageError"
	messageError.Parent = container
	messageError.AnchorPoint = Vector2.new(0.5, 0.5)
	messageError.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	messageError.BorderColor3 = Color3.fromRGB(0, 0, 0)
	messageError.BorderSizePixel = 0
	messageError.Position = UDim2.new(0.5, 0, 0.600000024, 0)
	messageError.Size = UDim2.new(1, 0, 0.100000001, 0)
	messageError.Visible = false
	messageError.Font = Enum.Font.Unknown
	messageError.TextColor3 = Color3.fromRGB(255, 255, 255)
	messageError.TextScaled = true
	messageError.TextSize = 14.000
	messageError.TextWrapped = true

	-- Scripts:

	local function IVBHAGU_fake_script() -- close.LocalScript 
		local script = Instance.new('LocalScript', close)

		local btn = script.Parent
		local container = btn.Parent.container


		btn.MouseButton1Click:Connect(function()
			container.Visible = not container.Visible
		end)



	end
	coroutine.wrap(IVBHAGU_fake_script)()
	local function SJZCB_fake_script() -- keySystem.key 
		local script = Instance.new('LocalScript', keySystem)

		local keyText = script.Parent
		local btnValidateKey = keyText.Parent.send
		local messageError = keyText.Parent.messageError

		local defaultText = "Ex. abc1-abc2-abc3-abc4-abc5"
		local httpService = game:GetService('HttpService')
		local player = game:GetService('Players').LocalPlayer
		local userId = player.UserId

		local url = 'https://devstudios.up.railway.app/api/auth/verify-acces-script/'..scriptId
		local attempts = 0
		local maxAttempts = 3
		local isLoading = false


		local httpRequest = function(key)
			local response = request(
				{
					Url = url,
					Method = "POST",
					Headers = {
						["Content-Type"] = "application/json"
					},
					Body = httpService:JSONEncode({key = key, robloxId = userId})
				}
			)

			return httpService:JSONDecode(response.Body)
		end


		local function onSucces()
			local _, fallo = pcall(function()
				keyText.Parent.Parent.Parent:Destroy()
				callbackSucces()
			end)
			if fallo then
				task.wait(1)
				print("Error al iniciar: "..fallo)
				onSucces()
			end
		end


		local function getFormatKey()
			if keyText.Text == defaultText then
				return nil
			else
				return keyText.Text
			end
		end


		local function handleError(message)
			messageError.Text = message
			messageError.Visible = true
			keyText.Text = defaultText
		end


		local function onLoading()
			isLoading = true
			btnValidateKey.Text = "Loading..."
		end

		local function onFinishLoading()
			isLoading = false
			btnValidateKey.Text = "Validate key"
		end


		local function showStatus(response)
			local _, fallo = pcall(function()
                if response.err then
                    if type(response.err) == 'string' then
                        handleError(response.err)
                    else
                        handleError(response.err[1])
                    end
                elseif response.status == 200 or response.data then
                    print("Usuario loggeado correctamente!")
                    onSucces()
                else
                    print("WTF? = "..httpService:JSONEncode(response))
                    handleError("Unexpected error, please contact support.")
                end
                print("Finalizando carga...")
                onFinishLoading()
            end)
            if fallo then
				task.wait(1)
                print(fallo)
				print("Intentando de nuevo")
				showStatus(response)
            end
		end


		local function verifyAcces(key)
            local _, fallo = pcall(function ()
				print("Loading...")
				onLoading()
				local response = httpRequest(key)
				print(httpService:JSONEncode(response))

				showStatus(response)
			end)
			if fallo then
				verifyAcces(key)
			end
		end


		local function onClick()
			local key = getFormatKey()

			if isLoading then
				return
			end

			if not key or #key <= 10 or #key >= 100 then
				handleError("Key is not valid")
				return
			end
			if attempts >= maxAttempts then
				handleError("You have exceeded the maximum number of attempts, please try again later")
				return
			end
			attempts = attempts + 1

			verifyAcces(key)
		end

		game.Players.LocalPlayer.Idled:Connect(function()
			game:service'VirtualUser':CaptureController()
			game:service'VirtualUser':ClickButton2(Vector2.new())
		end)
		btnValidateKey.MouseButton1Click:Connect(onClick)
        	print("Iniciando validacion!")
		verifyAcces(nil)
	end
	coroutine.wrap(SJZCB_fake_script)()
	local function MJOXPXV_fake_script() -- links.links 
		local script = Instance.new('LocalScript', links)


		local links = {
			youtube = 'https://www.youtube.com/@Heisenberg13133',
			discord = 'https://discord.gg/xDCakmb24Y',
			page = 'https://devstudios-store.vercel.app/home'
		}


		local childrens = script.Parent:GetChildren()


		local function onCopy(name)
			local link = links[name]
			setclipboard(link)

			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Copied successfully";
				Text = "The link has been copied to the clipboard";
				Icon = ""; -- URL del ícono, opcional
				Duration = 5; -- Tiempo en segundos que durará la notificación
			})

		end


		for i,v in pairs(childrens) do
			if v:IsA('TextButton') then
				v.MouseButton1Click:Connect(function()
					onCopy(v.Name)
				end)
			end
		end

	end
	coroutine.wrap(MJOXPXV_fake_script)()
end


return function(scriptId, callback)
	task.wait(0.3)
	local players = game:GetService('Players')

	if players.LocalPlayer then
		onKey(scriptId, callback)
	else
		players.PlayerAdded:Connect(function(player)
			if player == players.LocalPlayer then
				print("El usuario se unio correctamente")
				onKey(scriptId, callback)
			end
		end)
	end
end
