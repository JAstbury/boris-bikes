Boris Bikes Challenge
=======

The Makers Academy Week 1 task was to write a program that models the Boris Bikes system. The program runs all the Docking Stations, simulates all the Bikes, and emulates the entire infrastructure (vans, repair staff etc) required.

How to Use
-----

1. Clone the repo to your local machine
2. Run IRB or Pry
3. Require './lib/docking_station'

Example of how to run the full program:

```ruby
bike1 = Bike.new
bike2 = Bike.new
docking_station = DockingStation.new
bike1.report
docking_station.dock(bike1)
docking_station.dock(bike2)
docking_station.release_bike
van = Van.new
van.takes_broken_bikes(docking_station)
garage = Garage.new
van.drops_off_broken_bikes(garage)
garage.fix_bikes
van.accepts_fixed_bikes(garage)
van.drops_off_fixed_bikes(docking_station)
```
