require "fiddle"
%w[libsqlite3-0.dll libwinpthread-1.dll libgcc_s_seh-1.dll libstdc++-6.dll].each do |f|
  Fiddle.dlopen(f)
  puts "ok: #{f}"
end
