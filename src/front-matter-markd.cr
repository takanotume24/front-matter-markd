# TODO: Write documentation for `Front::Matter::Markd`
require "markd"
require "yaml"

module Front::Matter::Markd
  VERSION = "0.1.0"

  class File
    def initialize(string : String)
      @string = string
    end

    def gsub_front_matter
    end

    def yaml
      # [regex - Regular Expressions- Match Anything - Stack Overflow](https://stackoverflow.com/questions/6711971/regular-expressions-match-anything)
      md =  @string.match /(?<=---\n)[\s\S]*(?=---)/
      if md
        return YAML.parse md.string
      else
        return nil
      end
    end
  end
  # TODO: Put your code here
end
