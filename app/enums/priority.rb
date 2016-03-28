class Priority < ClassyEnum::Base
  def send_email?
    false
  end	
end

class Priority::Low < Priority
end

class Priority::Medium < Priority
end

class Priority::High < Priority
  def send_email?
    true
  end
end
