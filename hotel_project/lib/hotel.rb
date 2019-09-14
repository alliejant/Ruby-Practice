require_relative "room"

class Hotel
    def initialize(name, rooms)
        @name = name
        @rooms = rooms.each_pair {|name, capacity| rooms[name] = Room.new(capacity)}
    end

    def name
        @name.split.map {|word| word.capitalize}.join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(name)
        @rooms.key?(name)
    end

    def check_in(person, room_name)
        if !self.room_exists?(room_name)
            puts "sorry, room does not exist"
            return
        end

        check_in = @rooms[room_name].add_occupant(person)
        puts check_in ? "check in successful" : "sorry, room is full"
    end

    def has_vacancy?
        @rooms.each_value.any? {|room| !room.full?}
    end

    def list_rooms
        @rooms.each_pair {|name, room| puts "#{name}, #{room.available_space}"}
    end
end
