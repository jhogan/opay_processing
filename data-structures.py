lol = [[1, 2, 3],[4, 5, 6], [7, 8, 9]]

def sqr(x): return pow(x,2)

lol = [map(sqr, ls) for ls in reversed(lol)]
print(lol)

lol = [e for ls in lol for e in ls if e > 25]
print(lol)
