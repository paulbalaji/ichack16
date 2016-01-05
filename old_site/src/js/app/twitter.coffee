$ = require 'jquery'

fadeTweets = (tweets) ->
  html = '<ul>'
  for tweet in tweets
    html += '<li>' + tweet + '</li>'
  html += '</ul>'
  listSlideshow = $ html
  $ '.twitter-display'
    .append listSlideshow
  listItems = listSlideshow.children()
  currentTweetIndex = 0
  listItems.not(':first').hide()
  setInterval ->
    listItems.eq(currentTweetIndex).fadeOut 1000, ->
      currentTweetIndex++
      currentTweetIndex = 0 if currentTweetIndex is listItems.length
      listItems.eq(currentTweetIndex).fadeIn 1000
  , 5000

$ ->
  twitterWidgetId = "440567643435577344"
  window.twitterFetcher.fetch twitterWidgetId,
    'tweets', 5, true, false, false, 'default', false, fadeTweets

