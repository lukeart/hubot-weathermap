module.exports = (robot) ->

  robot.respond /weathermap (radar|day|night)$/i, (msg) ->
    daynight = msg.match[1]
    if daynight is "day"
      msg.send "http://cdn.knmi.nl/knmi/map/current/weather/forecast/kaart_verwachtingen_Morgen_dag.gif"
    if daynight is "night"
      msg.send "http://cdn.knmi.nl/knmi/map/current/weather/forecast/kaart_verwachtingen_Morgen_nacht.gif"
    if daynight is "radar"
      msg.send "http://api.buienradar.nl/image/1.0/radarmapnl/?.gif"
