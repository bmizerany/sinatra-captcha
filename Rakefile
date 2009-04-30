require 'rake/clean'
require 'fileutils'

# PACKAGING ============================================================

def source_version
  line = File.read('lib/sinatra/captcha.rb')[/^\s*VERSION = .*/]
  line.match(/.*VERSION = '(.*)'/)[1]
end

# Load the gemspec using the same limitations as github
def spec
  @spec ||=
    begin
      require 'rubygems/specification'
      data = File.read('sinatra-captcha.gemspec')
      spec = nil
      Thread.new { spec = eval("$SAFE = 3\n#{data}") }.join
      spec
    end
end

def package(ext='')
  "pkg/sinatra-captcha-#{spec.version}" + ext
end

desc 'Build packages'
task :package => %w[.gem].map {|e| package(e)}

desc 'Build and install as local gem'
task :install => package('.gem') do
  sh "gem install #{package('.gem')}"
end

directory 'pkg/'
CLOBBER.include('pkg')

file package('.gem') => %w[pkg/ sinatra-captcha.gemspec] + spec.files do |f|
  mkdir_p "pkg"
  sh "gem build sinatra-captcha.gemspec"
  mv File.basename(f.name), f.name
end

# Rubyforge Release / Publish Tasks ==================================

desc 'Publish gem to rubyforge'
task 'release' => [package('.gem')] do |t|
  sh <<-end
    rubyforge add_release sinatra sinatra-captcha #{spec.version} #{package('.gem')}
  end
end
