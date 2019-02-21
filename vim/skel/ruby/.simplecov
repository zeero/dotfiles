SimpleCov.start do
  add_filter '/test/'

  SimpleCov.command_name "MiniTest #{Time.now}"
end

