
# list comprehension
# three versions of same code

result = [(x, y) for x in range(10) for y in range(5) if x * y > 10]


result = [(x, y) for x in range(10) 
                    for y in range(5) 
                        if x * y > 10]

result = []
for x in range(10):
    for y in range(5):
        if x * y > 10:
            result.append((x, y))
