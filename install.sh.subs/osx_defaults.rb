require 'yaml'

yaml = YAML.load_file(File.expand_path('osx_defaults.yml', __dir__))

yaml.each do | defaults_key, items |
  items.each do | key, value |
    case value
    when TrueClass, FalseClass
      type = 'bool'
    when Integer
      type = 'int'
    when Float
      type = 'float'
    when String
      type = 'string'
    else
      next
    end
    system "defaults write #{defaults_key} #{key} -#{type} '#{value}'"
  end
end

