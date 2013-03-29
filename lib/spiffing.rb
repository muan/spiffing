require "spiffing/version"

module Spiffing
  class CSS

    def initialize file

      begin 
        @file = file
        @css = File.read file
      rescue Errno::ENOENT => e
        @notfound = true
        puts "- Good day. We cannot find your file, unfortunately."
      end

      @mugglifications = {
        'colour'        => 'color',
        'grey'          => 'gray',
        '!please'       => '!important',
        'transparency'  => 'opacity',
        'centre'        => 'center',
        'plump'         => 'bold',
        '-photograph'    => '-image',
        'capitalise'    => 'capitalize'
      }

    end
    
    def mugglified

      begin
        @mugglifications.each do |proper_english, some_other_english|
          @css = @css.gsub(proper_english, some_other_english)
        end
        create_new_css

      rescue => e
        unless @notfound
          puts "- Good lord, something went wrong and we don't know what. We are terribly sorry, sir."
        end

      end

    end

    def create_new_css
      
      begin
        new_filename = File.basename( @file ,'.*') + "-converted.css"
        new_css = File.new File.dirname(@file) + "/" + new_filename, "w"
        new_css.write @css
        new_css.close
        
        puts "- Brilliant. Your file '#{@file}' has been converted. New file name '#{new_filename}'."

      rescue => e
        puts "- Good lord, something went wrong and we don't know what. We are terribly sorry, sir."
        
      end

    end

  end
end
