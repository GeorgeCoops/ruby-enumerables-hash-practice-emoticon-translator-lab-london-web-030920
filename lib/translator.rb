# require modules here
require "yaml"
require "pry"

# => {"angel"=>["O:)", "☜(⌒▽⌒)☞"],
#  "angry"=>[">:(", "ヽ(ｏ`皿′ｏ)ﾉ"],
#  "bored"=>[":O", "(ΘεΘ;)"],
#  "confused"=>["%)", "(゜.゜)"],
#  "embarrased"=>[":$", "(#^.^#)"],
#  "fish"=>["><>", ">゜))))彡"],
#  "glasses"=>["8D", "(^0_0^)"],
#  "grinning"=>["=D", "(￣ー￣)"],
#  "happy"=>[":)", "(＾ｖ＾)"],
#  "kiss"=>[":*", "(*^3^)/~☆"],
#  "sad"=>[":'(", "(Ｔ▽Ｔ)"],
#  "surprised"=>[":o", "o_O"],
#  "wink"=>[";)", "(^_-)"]}


def load_library(emoticon_file)
emoticons = YAML.load_file(emoticon_file)

emoticon_library = {
  'get_meaning' => {},
  'get_emoticon' => {}
}
emoticons.each do |meaning, array_values|
  english_emoticon = array_values[0]
  japenese_emoticon = array_values[1]
  emoticon_library['get_meaning'][japenese_emoticon] = meaning
  emoticon_library['get_emoticon'][english_emoticon] = japenese_emoticon
end
emoticon_library
end

# {"get_meaning"=>
#  {"☜(⌒▽⌒)☞"=>"angel",
#   "ヽ(ｏ`皿′ｏ)ﾉ"=>"angry",
#   "(ΘεΘ;)"=>"bored",
#   "(゜.゜)"=>"confused",
#   "(#^.^#)"=>"embarrased",
#   ">゜))))彡"=>"fish",
#   "(^0_0^)"=>"glasses",
#   "(￣ー￣)"=>"grinning",
#   "(＾ｖ＾)"=>"happy",
#   "(*^3^)/~☆"=>"kiss",
#   "(Ｔ▽Ｔ)"=>"sad",
#   "o_O"=>"surprised",
#   "(^_-)"=>"wink"},
# "get_emoticon"=>
#  {"O:)"=>"☜(⌒▽⌒)☞",
#   ">:("=>"ヽ(ｏ`皿′ｏ)ﾉ",
#   ":O"=>"(ΘεΘ;)",
#   "%)"=>"(゜.゜)",
#   ":$"=>"(#^.^#)",
#   "><>"=>">゜))))彡",
#   "8D"=>"(^0_0^)",
#   "=D"=>"(￣ー￣)",
#   ":)"=>"(＾ｖ＾)",

def get_japanese_emoticon(emoticon_file, emoticon)
emoticon_library = load_library(emoticon_file)

if japense_emoticon = emoticon_library['get_emoticon'][emoticon]
  japense_emoticon = emoticon_library['get_emoticon'][emoticon]
  return japense_emoticon
end

'Sorry, that emoticon was not found'
end

def get_english_meaning
  # code goes here
end
