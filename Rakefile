require './constants'

desc 'serve the tiles'
task :host do
  sh "ruby serve.rb -p #{PORT}"
end

desc 'charites serve'
task :serve do
  sh "charites serve style.yml"
end

desc 'build style'
task :style do
  sh "charites build style.yml docs/style.json"
end

