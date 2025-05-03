local Neverzen = loadstring(game:HttpGet("https://raw.githubusercontent.com/zFor3st/Free-Librarys/refs/heads/main/NeverZen/source.lua"))()
local Notification = Neverzen:CreateNotifier();

Notification.new('Notification','Content',10)

local Window = Neverzen.new({
	Name = "NEVERLOSE",
	Keybind = Enum.KeyCode.LeftControl,
	Scale = UDim2.new(0, 611, 0, 396),
	Resizable = true,
	Shadow = true,
	Acrylic = true,
});

Window:AddLabel('General')

local ExampleTab = Window:AddTab({
	Name = "Example",
	Icon = "code"
})

local SectionLeft = ExampleTab:AddSection({
	Name = "Section",
	Position = "left"
})

SectionLeft:AddLabel('Label')

SectionLeft:AddToggle({
	Name = 'Toggle',
	Default = false,
	Callback = print,
})

SectionLeft:AddButton({
	Name = "Button",
	Callback = function()
		print('Hello')
	end,
})

SectionLeft:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 100,
	Round = 1,
	Default = 50,
	Type = "%",
	Callback = print,
})

SectionLeft:AddKeybind({
	Name = "Keybind",
	Default = "E",
	Callback = function(key : Enum.KeyCode)
		print(key.Name)
	end,
})

SectionLeft:AddDropdown({
	Name = "Dropdown",
	Values = {'N1','N2','N3','N4'},
	Default = 'N1',
	Callback = print
})

SectionLeft:AddDropdown({
	Name = "Dropdown",
	Values = {'N1','N2','N3','N4'},
	Default = {'N1'},
	Multi = true,
	Callback = print
})

local SectionRight = ExampleTab:AddSection({
	Name = "Section",
	Position = "right"
})

SectionRight:AddLabel('Label')

SectionRight:AddToggle({
	Name = 'Toggle',
	Default = false,
	Callback = print,
})

SectionRight:AddButton({
	Name = "Button",
	Callback = function()
		print('Hello')
	end,
})

SectionRight:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 100,
	Round = 1,
	Default = 50,
	Type = "%",
	Callback = print,
})

SectionRight:AddKeybind({
	Name = "Keybind",
	Default = "E",
	Callback = function(key : Enum.KeyCode)
		print(key.Name)
	end,
})

SectionRight:AddDropdown({
	Name = "Dropdown",
	Values = {'N1','N2','N3','N4'},
	Default = 'N1',
	Multi = false,
	Callback = print
})

SectionRight:AddDropdown({
	Name = "Dropdown",
	Values = {'N1','N2','N3','N4'},
	Default = {'N1'},
	Multi = true,
	Callback = print
})
