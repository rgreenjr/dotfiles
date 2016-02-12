require "irb/completion"
require "irb/ext/save-history"
require "awesome_print"

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"

AwesomePrint.irb!

class Object
  # list methods which aren't in superclass
  def m(klass)
    klass.public_instance_methods - Object.public_instance_methods
  end
end
