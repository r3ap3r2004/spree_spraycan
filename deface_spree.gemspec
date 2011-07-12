Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'deface_spree'
  s.version     = '0.60.99'
  s.summary     = 'Add gem summary here'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Brian D. Quinn'
  s.email             = 'brian@railsdog.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false

  s.add_dependency('deface_editor', '>= 0.3.0')
end
