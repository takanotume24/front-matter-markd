# TODO: Write documentation for `FrontMatterMarkd`
require "markd"
require "yaml"

module FrontMatterMarkd
  VERSION = "0.1.0"

  @@regex = /(?<=\A^---\n)[\s\S]*(?=^---)/m

  def self.yaml(string : String)
    # [regex - Regular Expressions- Match Anything - Stack Overflow](https://stackoverflow.com/questions/6711971/regular-expressions-match-anything)
    md = string.match @@regex

    if md
      return YAML.parse md.string
    else
      return nil
    end
  end

  def self.to_html(string : String)
    string = string.gsub @@regex, ""
    return Markd.to_html string
  end
end
