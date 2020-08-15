require "./spec_helper"

describe Front::Matter::Markd do
  # TODO: Write tests

  it "works" do
    source = File.read Path["spec/sample.md"]
    file = Front::Matter::Markd::File.new source 
    pp file.yaml
    # false.should eq(true)
  end
end
