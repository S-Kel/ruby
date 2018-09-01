class Colorizator
  COLOURS = { default: '38', black: '30', red: '31', green: '32', brown: '33', blue: '34', purple: '35',
              cyan: '36', gray: '37', dark_gray: '1;30', light_red: '1;31', light_green: '1;32', yellow: '1;33',
              light_blue: '1;34', light_purple: '1;35', light_cyan: '1;36', white: '1;37' }.freeze
  BG_COLOURS = { default: '0', black: '40', red: '41', green: '42', brown: '43', blue: '44',
                 purple: '45', cyan: '46', gray: '47', dark_gray: '100', light_red: '101', light_green: '102',
                 yellow: '103', light_blue: '104', light_purple: '105', light_cyan: '106', white: '107' }.freeze

  FONT_OPTIONS = { bold: '1', dim: '2', italic: '3', underline: '4', reverse: '7', hidden: '8' }.freeze

  def self.colorize(text, colour = :default, bg_colour = :default, **options)
      colour_code = COLOURS[colour]
      bg_colour_code = BG_COLOURS[bg_colour]
      font_options = options.select { |k, v| v && FONT_OPTIONS.key?(k) }.keys
      font_options = font_options.map { |e| FONT_OPTIONS[e] }.join(';').squeeze
      return "\e[#{bg_colour_code};#{font_options};#{colour_code}m#{text}\e[0m".squeeze(';')
  end
end