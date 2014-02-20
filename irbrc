#!/usr/bin/evn ruby
require 'irb/completion'
require 'irb/ext/save-history'
require 'awesome_print'

AwesomePrint.irb!

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

def y(obj)
  puts obj.to_yaml
end

class Object
  def mate(method_name)
    file, line = method(method_name).source_location
    `mate '#{file}' -l #{line}`
  end
end
