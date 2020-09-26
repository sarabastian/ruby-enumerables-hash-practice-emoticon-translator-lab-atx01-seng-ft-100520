require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')
emoticons

require 'pry'

def load_library(emoticons)
  new_hash = {}
  YAML.load_file(emoticons).each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
end
new_hash
end
  

def get_japanese_emoticon(emoticons, emoticon)
  load_library(emoticons).each do |key, value|
    if emoticon == value[:english]
      return value[:japanese]
    end
  end
    return "Sorry, that emoticon was not found"
end

def get_english_meaning(emoticons, emoticon)
  load_library(emoticons).each do |key, value|
    if emoticon == value[:japanese]
      return key
    end
  end
       return "Sorry, that emoticon was not found"
end
