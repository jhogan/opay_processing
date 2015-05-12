lol = [[1, 2, 3],[4, 5, 6], [7, 8, 9]]

lol = [map(lambda x: pow(x, 2), ls) for ls in reversed(lol)]
print(lol)

print([e for ls in lol for e in ls if e > 25])
