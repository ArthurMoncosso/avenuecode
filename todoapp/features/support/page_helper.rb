Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }


module PageObjects

    def app

        @app ||= ToDoApp.new

    end
    

end
