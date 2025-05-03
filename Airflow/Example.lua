local Airflow = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/zFor3st/Free-Librarys/refs/heads/main/Airflow/Source.lua"))();

local keybnd = Airflow:DrawList({
	Name = "keybinds",
	Icon = "keyboard"
})

keybnd:AddFrame({
	Key = "Duck Peek",
	Value = "[ enbaled ]"
})

keybnd:AddFrame({
	Key = "Third Person",
	Value = "[ enbaled ]"
})

local Window = Airflow:Init({
	Name = "airflow",
	Keybind = "LeftControl",
	Logo = "http://www.roblox.com/asset/?id=118752982916680",
});

local Example = Window:DrawTab({
	Name = "Example",
	Icon = "file"
})

local DisableTest = Window:DrawTab({
	Name = "Legit",
	Icon = "target"
})

DisableTest:Disable(true,":> im lazy")

local cfg = Example:AddSection({
	Name = "Config",
	Position = "right"
})

cfg:AddToggle({
	Name = "Resizable",
	Default = false,
	Callback = function(c)
		Window:SetResizable(c)
	end,
})

cfg:AddKeybind({
	Name = "Keybind",
	Default = "LeftControl",
	Callback = function(n)
		Window:SetKeybind(n)
	end,
})


local sec = Example:AddSection({
	Name = "Section",
	Position = "left",
});

local Features = Example:AddSection({
	Name = "Features",
	Position = "right",
});

sec:AddLabel("Global");

sec:AddToggle({
	Name = "Toggle",
	Callback = print
})

sec:AddButton({
	Name = "Button",
	Callback = function()
		Airflow:Notify({
			Title = "Notification",
			Content = "Hello World!",
			Duration = math.random(5,10)
		})
	end,
})

sec:AddKeybind({
	Name = "Keybind",
	Callback = print
})

sec:AddSlider({
	Name = "Slider",
	Callback = print
})

sec:AddDropdown({
	Name = "Dropdown",
	Values = {"Item","Item 2","Item 3","Item 4"},
	Multi = false,
	Default = nil,
	Callback = print
})

sec:AddDropdown({
	Name = "Multi",
	Values = {
		"Item",
		"Item 2",
		"Item 3",
		"Item 4"
	},
	Multi = true,
	Default = {
		"Item"
	},
	Callback = print
})

sec:AddTextbox({
	Name = "TextBox", 
	Numeric = false,
	Placeholder = "Placeholder",
	Default = "",
	Finished = true,
	Callback = print,
})

sec:AddColorPicker({
	Name = "ColorPicker 1",
	Default = Color3.fromRGB(0, 255, 217),
	Callback = print,
})


sec:AddColorPicker({
	Name = "ColorPicker 2",
	Default = Color3.fromRGB(255, 200, 0),
	Callback = print,
})


sec:AddParagraph({
	Name = "Paragraph",
	Content = "Content"
})

Features:AddToggle({
	Name = "Enabled",
	Callback = print,
}):AutomaticVisible({
	Target = true,
	Elements = {
		Features:AddToggle({
			Name = "Fly"
		}),
		Features:AddToggle({
			Name = "Noclip"
		}),
		Features:AddToggle({
			Name = "Double Tap"
		}),
		Features:AddToggle({
			Name = "Wallbang"
		})
	}
})

Features:AddToggle({
	Name = "Toggle"
})

local f2 = Example:AddSection({
	Name = "Feature II",
	Position = "Right"
})

f2:AddToggle({
	Name = "Enabled",
	Callback = print,
}):AutomaticVisible({
	Target = true,
	Elements = {
		f2:AddToggle({
			Name = "Fly"
		}),
		f2:AddToggle({
			Name = "Noclip"
		}),
		f2:AddToggle({
			Name = "Double Tap"
		}),
		f2:AddToggle({
			Name = "Wallbang"
		})
	}
})

f2:AddToggle({
	Name = "Toggle"
})

Example.Right:AddParagraph({
	Name = "Paragraph",
	Content = "Content"
})
