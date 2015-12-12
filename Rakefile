require './lib/store'

task :env do
  @store = Store.new
end

task set: :env do
  @store.set(ENV['VAL'])
  Rake::Task["get"].execute
end

task get: :env do
  puts @store.get
end
