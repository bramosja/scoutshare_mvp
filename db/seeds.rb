Location.create!([
  {city: "Chattanooga", state: "TN", country: "USA"},
  {city: "Nashville", state: "TN", country: "USA"}
])
Site.create!([
  {name: "Coolidge Park", description: "Site includes a park, river, and bridge", needs_permit: false, notes: "Parking typically costs. Lots of flexibility with background.", location_id: 1},
  {name: "Sunset Rock", description: "Has mountain view and a hike", needs_permit: true, notes: "Parking limited to 8 spots.", location_id: 1},
  {name: "Snoopers Rock", description: "Has mountain view and a hike", needs_permit: false, notes: "Connects to longer trails that go down the mountain.", location_id: 1},
  {name: "Cloudland Canyon", description: "Has hiking, a mountain view, and forest.", needs_permit: false, notes: nil, location_id: 1}
])
