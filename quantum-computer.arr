use context starter2024
include shared-gdrive("sprite-lib", "1oXiADjdC5WMA_iljrNdg7Dvo2mJC73_N")

data Qubit:
  | qubit(zero-amp :: Number, one-amp :: Number)
end

data State:
  | state(vector :: List<Number>)
end

data Operator:
  | operator(matrix :: List<List<Number>>)
end

data Tensor:
  | tensor(inner :: List<Tensor>)
  | value(val :: Number)
end

h = num-sqrt(1/2)
nh = 0 - h

operators-1 = [list:
  operator([list: [list: h, h], [list: h, nh]]),
  operator([list: [list: 0, 1], [list: 1, 0]]),
  operator([list: [list: 1, 0], [list: 0, -1]])]

operators-2 = [list:
  operator([list: [list: h, 0, h, 0], [list: 0, h, 0, h],
      [list: h, 0, nh, 0], [list: 0, h, 0, nh]]),
  operator([list: [list: h, h, 0, 0], [list: h, nh, 0, 0],
      [list: 0, 0, h, h], [list: 0, 0, h, nh]]),
  operator([list: [list: 0, 0, 1, 0], [list: 0, 0, 0, 1],
      [list: 1, 0, 0, 0], [list: 0, 1, 0, 0]]),
  operator([list: [list: 0, 1, 0, 0], [list: 1, 0, 0, 0],
      [list: 0, 0, 0, 1], [list: 0, 0, 1, 0]]),
  operator([list: [list: 1, 0, 0, 0], [list: 0, 1, 0, 0],
      [list: 0, 0, -1, 0], [list: 0, 0, 0, -1]]),
  operator([list: [list: 1, 0, 0, 0], [list: 0, -1, 0, 0],
      [list: 0, 0, 1, 0], [list: 0, 0, 0, -1]]),
  operator([list: [list: 1, 0, 0, 0], [list: 0, 1, 0, 0],
      [list: 0, 0, 0, 1], [list: 0, 0, 1, 0]]),
  operator([list: [list: 1, 0, 0, 0], [list: 0, 0, 0, 1],
      [list: 0, 0, 1, 0], [list: 0, 1, 0, 0]]),
  operator([list: [list: 1, 0, 0, 0], [list: 0, 1, 0, 0],
      [list: 0, 0, 1, 0], [list: 0, 0, 0, -1]]),
  operator([list: [list: 1, 0, 0, 0], [list: 0, 0, 1, 0],
      [list: 0, 1, 0, 0], [list: 0, 0, 0, 1]])]

operators-3 = [list:
  operator([list:
      [list: h, 0, 0, 0, h, 0, 0, 0], [list: 0, h, 0, 0, 0, h, 0, 0],
      [list: 0, 0, h, 0, 0, 0, h, 0], [list: 0, 0, 0, h, 0, 0, 0, h],
      [list: h, 0, 0, 0, nh, 0, 0, 0], [list: 0, h, 0, 0, 0, nh, 0, 0],
      [list: 0, 0, h, 0, 0, 0, nh, 0], [list: 0, 0, 0, h, 0, 0, 0, nh]]),
  operator([list:
      [list: h, 0, h, 0, 0, 0, 0, 0], [list: 0, h, 0, h, 0, 0, 0, 0],
      [list: h, 0, nh, 0, 0, 0, 0, 0], [list: 0, h, 0, nh, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, h, 0, h, 0], [list: 0, 0, 0, 0, 0, h, 0, h],
      [list: 0, 0, 0, 0, h, 0, nh, 0], [list: 0, 0, 0, 0, 0, h, 0, nh]]),
  operator([list:
      [list: h, h, 0, 0, 0, 0, 0, 0], [list: h, nh, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, h, h, 0, 0, 0, 0], [list: 0, 0, h, nh, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, h, h, 0, 0], [list: 0, 0, 0, 0, h, nh, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, h, h], [list: 0, 0, 0, 0, 0, 0, h, nh]]),
  operator([list:
      [list: 0, 0, 0, 0, 1, 0, 0, 0], [list: 0, 0, 0, 0, 0, 1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0], [list: 0, 0, 0, 0, 0, 0, 0, 1],
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0], [list: 0, 0, 0, 1, 0, 0, 0, 0]]),
  operator([list:
      [list: 0, 0, 1, 0, 0, 0, 0, 0], [list: 0, 0, 0, 1, 0, 0, 0, 0],
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0], [list: 0, 0, 0, 0, 0, 0, 0, 1],
      [list: 0, 0, 0, 0, 1, 0, 0, 0], [list: 0, 0, 0, 0, 0, 1, 0, 0]]),
  operator([list:
      [list: 0, 1, 0, 0, 0, 0, 0, 0], [list: 1, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 1, 0, 0, 0, 0], [list: 0, 0, 1, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 1, 0, 0], [list: 0, 0, 0, 0, 1, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 1], [list: 0, 0, 0, 0, 0, 0, 1, 0]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0], [list: 0, 0, 0, 1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, -1, 0, 0, 0], [list: 0, 0, 0, 0, 0, -1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, -1, 0], [list: 0, 0, 0, 0, 0, 0, 0, -1]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, -1, 0, 0, 0, 0, 0], [list: 0, 0, 0, -1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0], [list: 0, 0, 0, 0, 0, 1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, -1, 0], [list: 0, 0, 0, 0, 0, 0, 0, -1]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, -1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0], [list: 0, 0, 0, -1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0], [list: 0, 0, 0, 0, 0, -1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0], [list: 0, 0, 0, 0, 0, 0, 0, -1]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0], [list: 0, 0, 0, 1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0], [list: 0, 0, 0, 0, 0, 0, 0, 1],
      [list: 0, 0, 0, 0, 1, 0, 0, 0], [list: 0, 0, 0, 0, 0, 1, 0, 0]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0], [list: 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0], [list: 0, 0, 0, 1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0], [list: 0, 0, 0, 0, 0, 1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 1], [list: 0, 0, 0, 0, 0, 0, 1, 0]])]

operators-4 = [list:
  operator([list:
      [list: h, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, h, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, h, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, h, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, h, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, h],
      [list: h, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, h, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, h, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, nh, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, nh]]),
  operator([list:
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
      [list: 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1]])]

operators-5 = [list:
  operator([list:
      [list: h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h],
      [list: h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, h, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nh]]),
  operator([list:
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
      [list: 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]),
  operator([list:
      [list: 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0],
      [list: 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1]])]

fun get-state(qubits :: List<Qubit>) -> State:
  state(get-state-l(qubits))
end

fun get-state-l(qubits :: List<Qubit>) -> List<Number>:
  cases (List) qubits:
    | empty => empty
    | link(f, r) =>
      cases (List) r:
        | empty => [list: f.zero-amp, f.one-amp]
        | link(fr, rr) =>
          update-state(f, get-state-l(r))
      end
  end
end

check "get-state-l":
  get-state-l([list: qubit(1, 0), qubit(0, 1), qubit(0, 1)]) is [list: 0, 0, 0, 1, 0, 0, 0, 0]
end

fun update-state(a-qubit :: Qubit, curr-state :: List<Number>) -> List<Number>:
  cases (List) curr-state:
    | empty => empty
    | link(f, r) =>
      append-list(multiply-one(a-qubit.zero-amp, curr-state),
        multiply-one(a-qubit.one-amp, curr-state))
  end
end

check "update-state":
  update-state(qubit(1, 0), [list: 0, 1, 1/2, 1/2]) is [list: 0, 1, 1/2, 1/2, 0, 0, 0, 0]
end

fun append-list(alon1 :: List<Number>, alon2 :: List<Number>) -> List<Number>:
  b-alon1 = foldl(lam(acc, curr): link(curr, acc) end, empty, alon1)
  append-list-back(b-alon1, alon2)
end

fun append-list-back(alon1 :: List<Number>, alon2 :: List<Number>) -> List<Number>:
  cases (List) alon1:
    | empty => alon2
    | link(f, r) => append-list-back(r, link(f, alon2))
  end
end

fun multiply-one(num :: Number, alon :: List<Number>) -> List<Number>:
  cases (List) alon:
    | empty => empty
    | link(f, r) => link(f * num, multiply-one(num, r))
  end
end

check "multiply-one":
  multiply-one(2, [list: 2, 3, 4]) is [list: 4, 6, 8]
end

fun state-to-tensor(s :: State) -> Tensor:
  vector-to-tensor(s.vector)
end

fun vector-to-tensor(vec :: List<Number>) -> Tensor:
  if vec.length() == 1:
    value(vec.first)
  else:
    half = vec.length() / 2
    tensor([list: vector-to-tensor(take(half, vec)), vector-to-tensor(drop(half, vec))])
  end
end

fun take-n(n :: Number, l :: List<Number>) -> List<Number>:
  if n == 0:
    empty
  else:
    cases (List) l:
      | empty => empty
      | link(f, r) => link(f, take-n(n - 1, r))
    end
  end
end

fun drop-n(n :: Number, l :: List<Number>) -> List<Number>:
  if n == 0:
    l
  else:
    cases (List) l:
      | empty => empty
      | link(f, r) => drop-n(n - 1, r)
    end
  end
end

check "take-n":
  take-n(2, [list: 1, 2, 3, 4]) is [list: 1, 2]
  take-n(0, [list: 1, 2]) is empty
end

check "drop-n":
  drop-n(2, [list: 1, 2, 3, 4]) is [list: 3, 4]
  drop-n(0, [list: 1, 2]) is [list: 1, 2]
end

check "vector-to-tensor":
  vector-to-tensor([list: 1, 0]) is tensor([list: value(1), value(0)])
  vector-to-tensor([list: 0, 0, 0, 1, 0, 0, 0, 0]) is
  tensor([list:
      tensor([list:
          tensor([list: value(0), value(0)]),
          tensor([list: value(0), value(1)])]),
      tensor([list:
          tensor([list: value(0), value(0)]),
          tensor([list: value(0), value(0)])])])
end

check "state-to-tensor":
  state-to-tensor(get-state([list: qubit(1, 0), qubit(0, 1), qubit(0, 1)])) is
  tensor([list:
      tensor([list:
          tensor([list: value(0), value(0)]),
          tensor([list: value(0), value(1)])]),
      tensor([list:
          tensor([list: value(0), value(0)]),
          tensor([list: value(0), value(0)])])])
end

fun tensor-to-vector(tens :: Tensor) -> List<Number>:
  cases (Tensor) tens:
    | value(v) => [list: v]
    | tensor(inner) => flatten-tensors(inner)
  end
end

fun flatten-tensors(tens-l :: List<Tensor>) -> List<Number>:
  cases (List) tens-l:
    | empty => empty
    | link(f, r) => append-list(tensor-to-vector(f), flatten-tensors(r))
  end
end

fun tensor-to-state(tens :: Tensor) -> State:
  state(tensor-to-vector(tens))
end

check "tensor-to-vector":
  tensor-to-vector(value(5)) is [list: 5]
  tensor-to-vector(tensor([list: value(1), value(0)])) is [list: 1, 0]
end

check "tensor-to-state":
  tensor-to-state(tensor([list: value(1), value(0)])) is state([list: 1, 0])
end

fun apply-operator(state-v :: State, oper :: Operator) -> State:
  state(map(lam(row):
        fold2(lam(acc, x, y): acc + (x * y) end, 0, row, state-v.vector)
      end, oper.matrix))
end

fun apply-operators(state-v :: State, oper-l :: List<Operator>) -> State:
  cases (List) oper-l:
    | empty => state-v
    | link(f, r) => 
      apply-operators(apply-operator(state-v, f), r)
  end
end

check "apply-operator":
  apply-operator(state([list: 1, 0]), operators-1.get(1)) is state([list: 0, 1])
  apply-operator(state([list: 0, 0, 1, 0]), operators-2.get(6)) is state([list: 0, 0, 0, 1])
end

eps = 0.000001

fun near-equal(a :: Number, b :: Number) -> Boolean:
  num-abs(a - b) < eps
end

fun near-zero(x :: Number) -> Boolean:
  num-abs(x) < eps
end

fun all-zero(l :: List<Number>) -> Boolean:
  cases (List) l:
    | empty => true
    | link(f, r) => near-zero(f) and all-zero(r)
  end
end

fun is-entangled(t :: Tensor) -> Boolean:
  not(is-fully-separable(t))
end

fun is-fully-separable(t :: Tensor) -> Boolean:
  cases (Tensor) t:
    | value(_) => true
    | tensor(inner) =>
      zero-vec = tensor-to-vector(inner.get(0))
      one-vec = tensor-to-vector(inner.get(1))
      if proportional(zero-vec, one-vec):
        if all-zero(zero-vec):
          is-fully-separable(vector-to-tensor(one-vec))
        else:
          is-fully-separable(vector-to-tensor(zero-vec))
        end
      else:
        false
      end
  end
end

fun row-ok(a1 :: Number, a2 :: Number, orig1 :: List<Number>,
    orig2 :: List<Number>) -> Boolean:
  cases (List) orig1:
    | empty => true
    | link(b1, r1) =>
      cases (List) orig2:
        | empty => true
        | link(b2, r2) =>
          near-equal(a1 * b2, a2 * b1) and row-ok(a1, a2, r1, r2)
      end
  end
end

fun proportional(v1 :: List<Number>, v2 :: List<Number>) -> Boolean:
  all-pairs-ok(v1, v2, v1, v2)
end

fun all-pairs-ok(v1 :: List<Number>, v2 :: List<Number>, orig1 :: List<Number>,
    orig2 :: List<Number>) -> Boolean:
  cases (List) v1:
    | empty => true
    | link(a1, r1) =>
      cases (List) v2:
        | empty => true
        | link(a2, r2) =>
          row-ok(a1, a2, orig1, orig2) and all-pairs-ok(r1, r2, orig1, orig2)
      end
  end
end

check "is-entangled: product state":
  is-entangled(vector-to-tensor([list: 0, 1, 0, 0])) is false
end

check "is-entangled: bell state":
  is-entangled(vector-to-tensor([list: 1, 0, 0, 1])) is true
end

check "is-entangled: ghz state":
  is-entangled(vector-to-tensor([list: 1, 0, 0, 0, 0, 0, 0, 1])) is true
end

check "is-entangled: full separable 3-qubit":
  s = state-to-tensor(get-state([list: qubit(1, 0), qubit(0, 1), qubit(0, 1)]))
  is-entangled(s) is false
end

fun first-nonzero(l :: List<Number>) -> Number:
  cases (List) l:
    | empty => 0
    | link(f, r) =>
      if not(near-zero(f)): 0 else: 1 + first-nonzero(r) end
  end
end

fun vector-to-qubits(vec :: List<Number>) -> List<Qubit>:
  if vec.length() <= 1:
    empty
  else if vec.length() == 2:
    [list: qubit(vec.get(0), vec.get(1))]
  else:
    half = vec.length() / 2
    v0 = take(half, vec)
    v1 = drop(half, vec)
    if all-zero(v0):
      link(qubit(0, 1), vector-to-qubits(v1))
    else:
      j = first-nonzero(v0)
      link(qubit(1, v1.get(j) / v0.get(j)), vector-to-qubits(v0))
    end
  end
end

fun state-to-qubits(s :: State) -> Option<List<Qubit>>:
  if is-fully-separable(state-to-tensor(s)):
    some(vector-to-qubits(s.vector))
  else:
    none
  end
end

letters = [list: "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]

fun pick(ops :: List<Operator>, letters-left :: List<String>, letter :: String,
    vector-length :: Number) -> Operator:
  cases (List) ops:
    | empty =>
      raise("no operator for letter " + letter
          + " at vector length " + num-to-string(vector-length))
    | link(f, r) =>
      if letters-left.first == letter:
        f
      else:
        pick(r, letters-left.rest, letter, vector-length)
      end
  end
end

fun get-operator(vector-length :: Number, letter :: String) -> Operator:
  if vector-length > 32:
    raise("state vector too large: more than 5 qubits")
  else if vector-length == 2:
    pick(operators-1, letters, string-to-lower(letter), vector-length)
  else if vector-length == 4:
    pick(operators-2, letters, string-to-lower(letter), vector-length)
  else if vector-length == 8:
    pick(operators-3, letters, string-to-lower(letter), vector-length)
  else if vector-length == 16:
    pick(operators-4, letters, string-to-lower(letter), vector-length)
  else if vector-length == 32:
    pick(operators-5, letters, string-to-lower(letter), vector-length)
  else:
    raise("no operator list for a state vector of length "
        + num-to-string(vector-length))
  end
end

check "get-operator":
  get-operator(2, "a") is operators-1.get(0)
  get-operator(4, "g") is operators-2.get(6)
  get-operator(4, "J") is operators-2.get(9)
  get-operator(8, "k") is operators-3.get(10)
  get-operator(16, "c") is operators-4.get(2)
  get-operator(32, "b") is operators-5.get(1)
  get-operator(2, "d") raises "no operator for letter"
  get-operator(16, "d") raises "no operator for letter"
  get-operator(64, "a") raises "more than 5 qubits"
end

fun operator-count(n :: Number) -> Number:
  if n == 1: 3
  else if n == 2: 10
  else if n == 3: 11
  else if n == 4: 3
  else if n == 5: 3
  else: 0
  end
end

W = 700
H = 385
zoom = 0.8

fun label(n :: Number):
  q = text-font("q", 38, "black", "Helvetica", "swiss", "italic", "normal", false)
  sub = text(num-to-string(n), 22, "black")
  colon = text(":", 38, "black")
  tag = beside(beside-align("bottom", q, sub), colon)
  overlay-align("left", "center", tag, rectangle(90, 50, "solid", "white"))
end

arrow-line =
  beside(rectangle(520, 3, "solid", "black"),
    rotate(270, triangle(16, "solid", "black")))

fun wire-row(n :: Number):
  beside(label(n), arrow-line)
end

gap = rectangle(1, 50, "solid", "white")

fun stack(rows :: List):
  fold(lam(acc, r): above-align("left", above-align("left", acc, gap), r) end,
    rows.first, rows.rest)
end

fun append-qubit(k, sprite, world):
  if sprite.get("state").length() >= 5:
    sprite
  else if k == "0":
    sprite.update("state", sprite.get("state").append([list: qubit(1, 0)]))
  else if k == "1":
    sprite.update("state", sprite.get("state").append([list: qubit(0, 1)]))
  else:
    sprite
  end
end

fun append-operator(k, sprite, world):
  n = find-sprite-named("qubits", world).get("state").length()
  lower = string-to-lower(k)
  if (take(operator-count(n), letters).member(lower) and (sprite.get("state").length() <= 6)):
    sprite.update("state",
      sprite.get("state").append([list: get-operator(num-expt(2, n), lower)]))
  else:
    sprite
  end
end

fun draw-curcuit(sprite, world):
  n = find-sprite-named("qubits", world).get("state").length()
  if n == 0:
    rectangle(W, H, "solid", "white")
  else:
    overlay-align("left", "top",
      scale(zoom, stack(map(wire-row, range(0, n)))),
      rectangle(W, H, "solid", "white"))
  end
end

fun draw-operators(ops, world):
  gate = rectangle(10, H, "solid", "black")
  spacer = rectangle(50, H, "solid", "transparent")
  fold(lam(acc, o): beside(acc, beside(spacer, gate)) end,
    empty-image, ops)
end

fun show-final(k, sprite, world):
  if (k == "="):
    i-state = get-state(find-sprite-named("qubits", world).get("state"))
    f-state = apply-operators(i-state, find-sprite-named("operators", world).get("state"))
    sprite.update("state", f-state.vector)
  else:
    sprite
  end
end

fun draw-final(sprite, world):
  if (sprite.length() > 0):
    ent-l = text("is entangled? " + to-string(is-entangled(vector-to-tensor(find-sprite-named("final-state", world).get("state")))), 14, "black")
    lines = link(ent-l, map(lam(x): text(num-to-string(x), 14, "black") end, sprite))
    col = fold(lam(acc, t): above-align("left", acc, t) end,
      text("final state:", 16, "black"), lines)
    scale(num-min(1, (H - 10) / image-height(col)), col)
  else:
    lines = map(lam(x): text(num-to-string(x), 14, "black") end, sprite)
    col = fold(lam(acc, t): above-align("left", acc, t) end,
      text("final state:", 16, "black"), lines)
    scale(num-min(1, (H - 10) / image-height(col)), col)
  end
end
 

reset-sprites()

operators = mk-sprite.make([raw-array:
    {"name"; "operators"},
    {"init"; empty},
    {"loc"; posn(W / 3, H / 2)},
    {"new-state"; lam(s, w): s end},
    {"on-key"; append-operator},
    {"to-draw"; draw-operators}])

final-state = mk-sprite.make([raw-array:
    {"name"; "final-state"},
    {"init"; empty},
    {"loc"; posn((3.5 * W) / 4, H / 2)},
    {"new-state"; lam(s, w): s end},
    {"on-key"; show-final},
    {"to-draw"; draw-final}])

qubits = mk-sprite.make([raw-array:
    {"name"; "qubits"},
    {"init"; empty},
    {"new-state"; lam(s, w): s end},
    {"on-key"; append-qubit},
    {"to-draw"; lam(s, w): empty-image end}])

background = mk-sprite.make([raw-array:
    {"name"; "circuit-background"},
    {"init"; 0},
    {"loc"; posn(W / 2, H / 2)},
    {"new-state"; lam(s, w): s end},
    {"to-draw"; draw-curcuit}])

go-sprites(W, H, 0.05)