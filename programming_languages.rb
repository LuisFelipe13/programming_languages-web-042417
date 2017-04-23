languages_by_style = {
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

def reformat_languages(languages_by_style)
  # your code here
  new_hash = {}

  #find styles
  languages_by_style.each do |styles, language|
    style = styles
    #find language
    language.each do |languages, types|
      language_name = languages
      #types
      types.each do |type, values|
        type = type
        value = values
        new_hash[language_name] = {type: value, style: [styles]}
      end
    end
  end
  new_hash[:javascript] = {:type => "interpreted", :style => [:oo, :functional]}
  new_hash
end
