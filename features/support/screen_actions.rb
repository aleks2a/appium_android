class ScreenActions

  def swipe_to_direction direction
    if direction == "right"
      swipe(:start_x => 0.01, :start_y => 0.5, :end_x => 0.9, :end_y => 0.5, :duration => 900)
    elsif direction == "left"
      swipe(:start_x => 0.9, :start_y => 0.5, :end_x => 0.01, :end_y => 0.5, :duration => 900)
    end
  end

end