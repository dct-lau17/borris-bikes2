# User Stories

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked


Objects           Messages
User              
Bike              is_working?
Docking_station   release, dock, has_bike?

Bike <-- is_working? --> true / false
Docking_station <-- release --> Bike
Docking_station <-- dock --> count_of_bikes ? or maybe a boolean or "successful dock message"
Docking_station <-- has_bike? --> true / false ( if count_of_bikes > 0 )
