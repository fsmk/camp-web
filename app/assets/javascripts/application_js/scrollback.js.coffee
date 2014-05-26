$(document).on 'ready page:load', ->
    window.scrollback =
      streams: ["fsmk"]
      theme: "light"
      ticker: true

    ((d, s, h, e) ->
      e = d.createElement(s)
      e.async = 1
      e.src = h + "/client.min.js"
      scrollback.host = h
      d.getElementsByTagName(s)[0].parentNode.appendChild e
      return
    ) document, "script", ((if location.protocol is "https:" then "https:" else "http:")) + "//scrollback.io"