# Continous Sum - Brute Force Solution

arr = [-3, 3, 4, 5, -4, 7, 11]
max = arr[0]
def recur(list):
  for i in range(1, len(list) + 1):
    global max
    local = sum(list[:i])
    if local > max:
      max = local
for i in range(0, len(arr)):
  recur(arr[i:])
print(max)
