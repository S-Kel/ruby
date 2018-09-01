$font_colors = 
           {default: "38" , black: "30", red:  "31", green:     "32",   brown:     "33",   blue: "34", 
            purple:  "35" , cyan:  "36", gray: "37", dark_gray: "1;30", light_red: "1;31", light_green: "1;32", yellow: "1;33", light_blue: "1;34", light_purple:   "1;35", light_cyan: "1;36", white:      "1;37"
           }
$bg_colors = 
           { default: "0", black: "40", red: "41", green: "42", brown: "43", blue: "44", purple: "45",               cyan: "46",gray: "47", dark_gray: "100", light_red: "101", light_green: "102",yellow: "103", 
             light_blue: "104", light_purple: "105", light_cyan: "106", white: "107"
            }

def colorize(text, color={}, bg_color={})
  color_code   = color[color]
  bgColor_code = bg_color[bg_color]
  return "\033[#{bgColor_code};#{color_code}m#{text}\033[0m"
end

def zodiac_sign(start=[])
  if    start[0] == 3 && start[1] >= 21 || start[0] == 4 && start[1] <= 19 
    return "Aries"
  elsif start[0] == 4 && start[1] >= 20 || start[0] == 5 && start[1] <= 20 
    return "Taurus"
  elsif start[0] == 5 && start[1] >= 21 || start[0] == 6 && start[1] <= 20 
    return "Gemini" 
  elsif start[0] == 6 && start[1] >= 21 || start[0] == 7 && start[1] <= 20 
    return "Cancer"
  elsif start[0] == 7 && start[1] >= 21 || start[0] == 8 && start[1] <= 22 
    return "Leo"
  elsif start[0] == 8 && start[1] >= 23 || start[0] == 9 && start[1] <= 22 
    return "Virgo"
  elsif start[0] == 9 && start[1] >= 23 || start[0] == 10 && start[1] <= 22 
    return "Libra"
  elsif start[0] == 10 && start[1] >= 23 || start[0] == 11 && start[1] <= 21 
    return "Scorpio"
  elsif start[0] == 11 && start[1] >= 22 || start[0] == 12 && start[1] <= 21 
    return "Sagittarius"
  elsif start[0] == 12 && start[1] >= 22 || start[0] == 1 && start[1] <= 19 
    return "Capricorn"
  elsif start[0] == 1 && start[1] >= 20 || start[0] == 2 && start[1] <= 18 
    return "Aquarius"
  elsif start[0] == 2 && start[1] >= 19 || start[0] == 3 && start[1] <= 20 
    return "Pisces"

  end
end
#puts bg_colors[:gray]
#puts colorize(" My name ", font_colors[:yellow], bg_colors[:red])