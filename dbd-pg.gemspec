require 'rubygems'

def extract_version
  if File.read('src/Pg.rb') =~ /\s*VERSION\s*=\s*"(\d+[.]\d+[.]\d+)"\s*/m 
    $1
  else 
    raise
  end
end

spec = Gem::Specification.new do |s|
  s.name = 'dbd-pg'
  s.version = extract_version()
  s.summary = "Database driver for PostgreSQL"

  s.files = (['src/*'] + 
             Dir['test/**/*']).
             delete_if {|item| item.include?(".svn") }

  s.require_path = '.'
  s.autorequire = 'Pg'

  s.author = "Michael Neumann, Jim Weirich"
  s.email = "mneumann@ntecs.de"
  s.homepage = "ruby-dbi.rubyforge.org"
  s.rubyforge_project = "ruby-dbi"
end
