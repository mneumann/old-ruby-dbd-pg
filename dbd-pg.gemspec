require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name = 'dbd-pg'
  s.version = if File.read('Pg.rb') =~ /\s*VERSION\s*=\s*"(\d+[.]\d+[.]\d+)"\s*/m then $1 else raise end 
  s.summary = "Database driver for PostgreSQL"

  s.files = (['Pg.rb'] + 
             Dir['test/**/*']).
             delete_if {|item| item.include?(".svn") }

  s.require_path = '.'
  s.autorequire = 'Pg'

  s.author = "Michael Neumann, Jim Weirich"
  s.email = "mneumann@ntecs.de"
  s.homepage = "ruby-dbi.rubyforge.org"
  s.rubyforge_project = "ruby-dbi"
end
