require "rbconfig"
require "ftools"

dst = File.join(Config::CONFIG["sitelibdir"], "DBD", "Pg")

File.mkpath(dst, true)
File.install("lib/Pg.rb", File.join(dst, 'Pg.rb'), 0644, true)
