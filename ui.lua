-- ui.lua
local ui = {}
local font = nil
local icon = nil
local heart = nil

function ui.load()
    local status, f = pcall(love.graphics.newFont, "assets/pixelFont.fnt")
    if status then
        font = f
        font:setFilter("nearest", "nearest")
    else
        font = love.graphics.newFont(12)
    end
    
    -- Load Main Icon
    local i_status, img = pcall(love.graphics.newImage, "assets/gemini.png")
    if i_status then icon = img end

    -- Load Heart Icon
    local h_status, h_img = pcall(love.graphics.newImage, "assets/heart.png")
    if h_status then heart = h_img end
end

function ui.get_font() return font end
function ui.get_line_height(scale) return font:getHeight() * scale end
function ui.width(text, scale)
    scale = scale or 3
    if font then return font:getWidth(text) * scale else return 0 end
end

function ui.draw_icon(x, y, w, h)
    if icon then
        love.graphics.setColor(1, 1, 1)
        local sx = w / icon:getWidth()
        local sy = h / icon:getHeight()
        love.graphics.draw(icon, x, y, 0, sx, sy)
    end
end

function ui.draw_heart(x, y, w, h)
    if heart then
        love.graphics.setColor(1, 1, 1)
        local sx = w / heart:getWidth()
        local sy = h / heart:getHeight()
        love.graphics.draw(heart, x, y, 0, sx, sy)
    end
end

function ui.draw_panel(x, y, w, h, color)
    love.graphics.setColor(unpack(color))
    love.graphics.rectangle("fill", x, y, w, h)
end

function ui.print(text_or_table, x, y, scale)
    scale = scale or 3
    love.graphics.setFont(font)
    
    if type(text_or_table) == "table" then
        local status, err = pcall(function() 
            love.graphics.print(text_or_table, x, y, 0, scale, scale)
        end)
        if not status then
            love.graphics.setColor(1, 0, 0)
            love.graphics.print("Error rendering", x, y, 0, scale, scale)
        end
    else
        -- If no explicit color set, default to dim white
        local r,g,b,a = love.graphics.getColor()
        if r==1 and g==1 and b==1 then
            love.graphics.setColor(0.9, 0.9, 0.9)
        end
        love.graphics.print(tostring(text_or_table), x, y, 0, scale, scale)
    end
end

function ui.draw_button(text, x, y, w, h)
    local mx, my = love.mouse.getPosition()
    local hover = mx >= x and mx <= x+w and my >= y and my <= y+h
    
    if hover then
        love.graphics.setColor(0.25, 0.25, 0.3)
    else
        love.graphics.setColor(0.18, 0.18, 0.22)
    end
    
    love.graphics.rectangle("fill", x, y, w, h, 4, 4)
    local txt_w = font:getWidth(text) * 2
    local txt_h = font:getHeight() * 2
    
    love.graphics.setColor(0.95, 0.95, 0.95)
    love.graphics.print(text, x + (w-txt_w)/2, y + (h-txt_h)/2, 0, 2, 2)
end

function ui.button_hit(text, x, y, w, h, mx, my)
    return mx >= x and mx <= x+w and my >= y and my <= y+h
end

return ui