footprint = () ->

  size = 11
  half = size / 2
  line_size = half - 1.5
  line_width = 0.25
  num_pads = 44
  e = 0.8

  meta =
    type: 'meta'
    name: 'TQFP44'
    id: '9364e38b40644665a3c8c07a5f2f3190'
    parent: 'e5bd48346acc4d549d678cb059be64ef'
    desc: 'TQFP44 example'

  # this package is used by e.g. the Atmel ATMEGA1284P-AU

  name = make_name (half + 1.5)
  value = make_value (-half - 1.5)

  pad = new Smd
  pad.dx = 1.67
  pad.dy = 0.36
  pad.ro = 50

  pads = quad pad, num_pads, e, size

  ls = line_size
  silk = lines line_width, [[-ls,ls], [ls,ls], [ls,-ls], [-ls,-ls], [-ls,ls]]

  pads[0].ro = 100

  dot = new Dot(line_width)
  dot.x = -half
  dot.y = half - 1

  combine [meta, name, value, pads, silk, dot]
