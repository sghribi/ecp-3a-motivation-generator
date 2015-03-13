angular.module '%module%.common'
.filter 'date', ->
  (date, format) ->
    switch format
      when 'calendar'
        moment(date).calendar()
      when 'fromNow'
        moment(date).fromNow()
      else
        moment(date).format(format)
