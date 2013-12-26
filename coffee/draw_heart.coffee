rx = 200
ry = 200
radius = 180
sleep = 0
count = 0
step = 5
canvas = undefined
context = undefined

deg2rad = (x)->
  x * Math.PI / 180

drawCircle = (x, y, r) ->
  context.beginPath()
  context.arc(x, y, r, 0, Math.PI * 2, true)
  context.stroke()
  return

window.drawLine = drawLine = (x1, y1, x2, y2) ->
  context.beginPath()
  context.moveTo(x1, y1)
  context.lineTo(x2, y2)
  context.stroke()
  if count is 82
    count = 0
    sleep = 0
  return

delay = (ms, func) -> setTimeout func, ms


drawSide = (begin1, end1, step1, begin2, step2) ->
  while begin1 != end1 + step1
    d1 = deg2rad(begin1)
    d2 = deg2rad(begin2)
    x1 = rx + radius * Math.cos(d1)
    y1 = ry - radius * Math.sin(d1)
    x2 = rx + radius * Math.cos(d2)
    y2 = ry - radius * Math.sin(d2)
    delay sleep * 100, do (x1, y1, x2, y2) ->
      -> drawLine.call(this, x1, y1, x2, y2)
    sleep += 1
    begin1 += step1
    begin2 += step2
  return


drawHeart = (containerSelector) ->
  $container = $(containerSelector)
  width = $container.width() - 20
  height = width
  radius = width / 2
  rx = radius
  ry = radius
  $canvas = $('<canvas></canvas>').attr('width', width).attr('height', height).appendTo($container)

  canvas = $canvas.get(0)
  context = canvas.getContext('2d')

  context.clearRect(0, 0, canvas.width, canvas.height)

  context.strokeStyle = "black"

  drawCircle(rx, ry, radius)
  context.strokeStyle = "red"
  drawSide(-90, 0, step, 0, step)
  drawSide(-90, -180, -step, -180, -step)
  drawSide(0, 180, step, 90, step * 2)
  return


window.drawHeart = drawHeart
