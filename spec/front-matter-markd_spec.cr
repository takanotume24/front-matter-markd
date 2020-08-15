require "./spec_helper"

# sample file from [jekyll/getting-started.md at master · jekyll/jekyll](https://github.com/jekyll/jekyll/blob/master/test/source/_tutorials/getting-started.md)

describe FrontMatterMarkd do
  describe ".yaml(string : String)" do
    it "get yaml" do
      source = File.read Path["spec/sample.md"]
      yaml = FrontMatterMarkd.yaml source
      if yaml
        yaml["title"].to_s.should eq("Getting Started")
      end
    end
  end

  describe ".to_html(string : String)" do
    it "get html" do
      source = File.read Path["spec/sample.md"]

      html = FrontMatterMarkd.to_html source
      html.should eq(
        <<-HTML
        <hr />
        <hr />
        <p>The first thing you need is a working installation of Ruby. Install from <a href="https://www.ruby-lang.org/en/documentation/installation/">the official website</a>.</p>\n
        HTML
      )
    end
  end
end
