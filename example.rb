# back and forth
1.upto(140) do |n|
  lights(target: 0, i: n, r: 0, g: 0, b: 0)
end
while(true)
  1.upto(140) do |n|
    lights(target: 0, i: n, r: 255, g: 0, b: 0)
  end
  sleep(5)
  1.upto(140) do |n|
    lights(target: 0, i: n, r: 0, g: 255, b: 0)
  end
  140.downto(1) do |n|
    lights(target: 0, i: n, r: 255, g: 0, b: 0)
  end
  sleep(5)
  140.downto(1) do |n|
    lights(target: 0, i: n, r: 0, g: 255, b: 0)
  end
end

# random

1.upto(140) do |n|
  lights(target: 0, i: n, r: 0, g: 0, b: 0)
end
while(true)
  1.upto(140) do |n|
    lights(target: 0, i: n, r: rand(255), g: rand(255), b: rand(255))
  end
  sleep(5)
end

# black, red, yellow

1.upto(140) do |n|
  lights(target: 0, i: n, r: 0, g: 0, b: 0)
end
1.upto(140) do |n|
  case n % 3
    when 0 then
      lights(target: 0, i: n, r: 0, g: 0, b: 0)
      puts "black"
    when 1 then
      lights(target: 0, i: n, r: 255, g: 0, b: 0)
      puts "red"
    when 2 then
      lights(target: 0, i: n, r: 255, g: 255, b: 0)
      puts "yellow"
  end
end
