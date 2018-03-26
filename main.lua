-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local dayTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 400, 450, 75 )
dayTextField.id = "day textField"

local chooseDayField = display.newText( " What day is it? ", display.contentCenterX , display.contentCenterY - 500, native.systemFont, 85 )
chooseDayField.id = "choose day textField"
chooseDayField:setFillColor( 1, 1, 1 )

local ageTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 200, 450, 75 )
ageTextField.id = "age textField"

local ageField = display.newText( " How old are you? ", display.contentCenterX , display.contentCenterY - 300, native.systemFont, 85 )
ageField.id = "age textField"
ageField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.jpg", 425, 251 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local age
local day

local function calculateButtonTouch( event )

	age = ageTextField.text
	day = dayTextField.text

	if day == "tuesday" or "thursday" or if age <21 and >12 then
		calculateButton.alpha = 0.0
		ageField.alpha = 0.0
		ageTextField.alpha = 0.0
		chooseDayField = 0.0
		

    return true
end


calculateButton:addEventListener( "touch", calculateButtonTouch )