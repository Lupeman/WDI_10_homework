var worms = [
  new Worm({
    id: 1,
    name: "Bob",
    type: "'funny'",
    image: '/images/funny-worm.jpg'
  }),
  new Worm({
    id: 2,
    name: "Susie",
    type: "'loner'",
    image: '/images/loner-worm.jpg'
  }),
  new Worm({
    id: 3,
    name: "Clarence",
    type: "'naughty'",
    image: '/images/naughty-worm.jpg'
  }),
  new Worm({
    id: 4,
    name: "Warner",
    type: "'clever'",
    image: '/images/clever-worm.jpg'
  })
];

_.each(worms, function(worm){
    var view = new ListItemView({ model: worm});
    view.render();
    $('#list').append(view.el)
});
