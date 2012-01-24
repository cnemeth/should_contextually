Gem::Specification.new do |s|
  s.name = %q{should_contextually}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["JWinky"]
  s.date = %q{2010-09-20}
  s.description = %q{Shoulda-compatible access testing framework inspired by Contextually.}
  s.email = %q{jw@gobalto.com}
  
  s.files = [
     "README",
     "VERSION",
     "lib/should_contextually.rb",
     "should_contextually/test_case.rb",
     "test/test_helper.rb",
     "test/test_test.rb",
     "test/should_contextually_test.rb",
  ]
  s.homepage = %q{https://github.com/jwinky/should_contextually/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Shoulda-compatible access testing framework.}
  s.test_files = [
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<sdoc>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<sdoc>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<sdoc>, [">= 0"])
  end
end

