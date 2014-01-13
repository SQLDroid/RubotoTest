require 'ruboto/widget'
require 'ruboto/util/toast'

ruboto_import_widgets :Button, :LinearLayout, :TextView

class RubotoTestActivity
  def onCreate(bundle)
    super
    set_title 'SQLDroid Ruboto Tests'

    self.content_view =
        linear_layout :orientation => :vertical do
          @text_view = text_view :text => 'Tests are running...', :id => 42,
                                 :layout => {:width => :match_parent},
                                 :gravity => :center, :text_size => 48.0
          button :text => 'EXIT',
                 :layout => {:width => :match_parent},
                 :id => 43, :on_click_listener => proc { finish }
        end
  rescue Exception
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end

end
