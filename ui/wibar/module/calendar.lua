local wibox = require("wibox")
local helpers = require("helpers")
local theme = require("theme")
local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

return function()
    return wibox.widget {
        {
            {
                {
                    {
                        image = gears.color.recolor_image(theme.calendar,
                                                          "#FFFFFF"),
                        resize = true,
                        widget = wibox.widget.imagebox
                    },
                    margins = dpi(12),
                    widget = wibox.container.margin
                },
                bg = beautiful.bg_light,
                shape = helpers.shape(10),
                widget = wibox.container.background
            },
            margins = {
                top = dpi(6),
                bottom = dpi(12),
                left = dpi(12),
                right = dpi(12)
            },
            widget = wibox.container.margin
        },
        bg = beautiful.bg_dark,
        widget = wibox.container.background
    }
end
