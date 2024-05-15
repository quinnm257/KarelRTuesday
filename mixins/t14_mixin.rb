
require_relative "../mixins/sensor_pack"
include SensorPack

module T14Mixin

def move(fois=1)
  fois.times do 
    super()
  end
end

def pick_beeper(fois=1)
  fois.times do
    if next_to_a_beeper? 
      super()
    end
  end
end

def put_beeper(fois=1)
  fois.times do 
    if any_beepers_in_beeper_bag?
      super()
    end
  end
end

end

