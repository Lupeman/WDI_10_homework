var ListItemView = Backbone.View.extend({
  tagName: 'td',
  initialize: function(){
    this.listenTo(this.model, 'change:name', this.render);
  },
  render: function(){
    var html = Handlebars.templates.worm(this.model.toJSON());
    this.$el.html(html);
  }
})
