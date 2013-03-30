require "spiffing/version"

module Spiffing

  class CSSConverter

    MUGGLIFICATIONS = {
      'colour'        => 'color',
      'grey'          => 'gray',
      '!please'       => '!important',
      'transparency'  => 'opacity',
      'centre'        => 'center',
      'plump'         => 'bold',
      '-photograph'   => '-image',
      'capitalise'    => 'capitalize'
    }

    def initialize spiffing_css_path
      @spiffing_filepath = spiffing_css_path
      @spiffing_css = File.read spiffing_css_path
    end
    
    def mugglify
      MUGGLIFICATIONS.each do |proper_english, some_other_english|
        @normal_css = @spiffing_css.gsub(proper_english, some_other_english)
      end

      new_filename = File.basename( @spiffing_filepath ,'.*') + "-converted.css"
      normal_css_file = File.new File.dirname(@spiffing_filepath) + "/" + new_filename, "w"
      normal_css_file.write @normal_css
      normal_css_file.close
      
      puts "- Brilliant. Your file '#{@spiffing_filepath}' has been converted. New file name '#{new_filename}'."

    rescue
      puts "- Something went wrong and we don't know what. We are terribly sorry."
    end

  end
  
end
