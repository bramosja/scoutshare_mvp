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
Tag.create!([
              {title: "Waterfall"},
              {title: "Mountain View"},
              {title: "Forest"},
              {title: "Field"},
              {title: "River"},
              {title: "Creek"},
              {title: "Lake"},
              {title: "Warehouse"},
              {title: "Park"},
              {title: "Bridge"}
            ])
SiteTag.create!([
  {site_id: 2, tag_id: 2},
  {site_id: 3, tag_id: 2},
  {site_id: 1, tag_id: 9},
  {site_id: 1, tag_id: 10},
  {site_id: 1, tag_id: 5},
  {site_id: 4, tag_id: 2},
  {site_id: 4, tag_id: 3}
])

