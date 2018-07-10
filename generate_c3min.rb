require 'uglifier'
version = Gem.loaded_specs["uglifier"].version
unless [Gem::Version.new('4.1.13'), Gem::Version.new('4.1.14')].include?(version)
  puts "this is a script to test https://github.com/lautis/uglifier/issues/140"
  puts "you're using a wrong version #{version}"
end

puts "Uglifying c3.js..."
File.write("c3min.js", Uglifier.compile(File.read("c3.js"), compress: {unused: true})) # unused true = wrong js
puts "Done"