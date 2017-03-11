require 'pry'

# if formatted_hash.key?(:style)
#   # formatted_hash[name] = {
#   #   :type => hash2[:type],
#   #   :style => []
#   # }
#
#   formatted_hash[name][:style].push(style)
# else
#   binding.pry
#   formatted_hash[name][:type] = hash2[:type]
#   if formatted_hash[name].key?(:style)
#     formatted_hash[name][:style].push(style)
#   else
#     formatted_hash[name][:style] = style
#   end
# end


languages_hash = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
  # {  NEW FORMAT
  #   :javascript => {
  #     :type => "interpreted",
  #     :style => [:oo, :functional]
  #   },
  #   ...
  # }

def reformat_languages(languages)
  # your code here
  formatted_hash= {}
  languages.each do |style, hash1|
    #puts "#{style}\n"
    languages[style].each do |name, hash2|
      puts "#{name}\n"
      if formatted_hash.key?(name)
        formatted_hash[name][:style].push(style)
        #puts "#{formatted_hash[name][:style].push(style)}\n"
        formatted_hash[name][:type] = hash2[:type]
      else
        formatted_hash[name] = {
          :type => "",
          :style => []
        }
        formatted_hash[name][:style].push(style)
        #puts "#{formatted_hash[name][:style].push(style)}\n"
        formatted_hash[name][:type] = hash2[:type]
        #puts "#{formatted_hash[name][:type] = hash2[:type]}\n"
        if name == "javascript"
          binding.pry
        end
      end


    end
    formatted_hash
  end

  # formatted_hash.collect do |language, hash|
  #   if hash.key?(:style)
  #     puts "HASH HAS KEY :STYLE"
  #     hash[:style] = hash[:style].push()
  #
  #   end
  # end
  formatted_hash

end

puts "\n\n\n#{reformat_languages(languages_hash)}"
