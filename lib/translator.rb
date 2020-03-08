# require modules here
require "yaml"
require "pry"


def load_library(emoticon_file)
emoticons = YAML.load_file(emoticon_file)

emoticon_lib = {
  :get_meaning => {},
  :get_emoticon => {}
}
binding.pry

emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
