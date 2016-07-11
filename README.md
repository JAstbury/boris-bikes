Boris Bikes Challenge
=======

The Task
-----

To write a program that models the Boris Bike system. The program will run all the Docking Stations, simulate all the Bikes, and emulate the entire infrastructure (vans, repair staff etc) required.

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
