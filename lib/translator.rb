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
  :get_meaning => {},
  :get_emoticon => {}
}

emoticons.each do |word, array_values|
  english_value = array_values[0]
  japenese_value = array_values[1]
  emoticon_library[:get_meaning][]
end


emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
