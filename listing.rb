require_relative 'host.rb'
class Listing
    attr_reader :host, :beds, :dates_available, :price
    attr_accessor :cancellation, :review_hash, :guests
    def initialize(host, beds, dates_available, price)
        @host = host
        @beds = beds
        @dates_available = dates_available
        @cancellation = "strict"
        @guests = []
        @review_hash = {
        }
        @price = price
    end
    def reserve_and_pay(guestsname, nights)
        @guests.push(guestsname)
        puts nights * price
    end
    def leaving_a_review(guests, text)
        return @review_hash[guests] = "#{text}"
    end
end
balilisting = Listing.new("fred", 42, "2/16/18", 1000)
balilisting.reserve_and_pay("guestname", 2)
puts balilisting.guests
puts balilisting.dates_available

balilisting.leaving_a_review("Bob", "it sucked")
puts balilisting.review_hash
