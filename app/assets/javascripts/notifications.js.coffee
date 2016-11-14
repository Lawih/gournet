class Notifications

  constructor: ->
    console.log("hofofo");
    @notifications = $("[data-behavior='notifications']");
    @setup() if @notifications.length > 0

  setup: ->
    console.log(@notifications);

jQuery ->
  console.log("higig");
  new Notifications
