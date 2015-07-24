Ruby implementation of the light controller:

```
irb -r ./client
> 1.upto(1000) { |n| lights(target: 0, i: n, r: 255, g: 0, b: 0) }
```
