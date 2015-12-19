class ScreenActions

  def self.element name, finder
    define_method(name)do
      find_element(finder)
    end
  end

  def swipe_to_direction direction
    if direction == "right"
      swipe(:start_x => 0.01, :start_y => 0.5, :end_x => 0.9, :end_y => 0.5, :duration => 900)
    elsif direction == "left"
      swipe(:start_x => 0.9, :start_y => 0.5, :end_x => 0.01, :end_y => 0.5, :duration => 900)
    end
  end

  #method accept arguments: 'on' 'off'
  def turn_airplane_mode value
    toggle_airplane_mode if value == "on"
    set_network_connection(6) if value == "off"
  end

  def scroll_to text
    scroll_to_exact text
  end

  def tap_on_first_element text
    find_elements(:name, text).first.click
  end

  def android_menu
    # system "adb shell input keyevent 82"
    press_keycode "82"
  end

end