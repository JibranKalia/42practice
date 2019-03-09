var repeatedStringMatch = function(A, B) {
  const stringA = A.split("");
  const stringB = B.split("");
  let counter = 1;
  let j = stringA.findIndex(c => c === stringB[0]);
  if (j === -1) {
    return j;
  }
  for (let i = 0; i < stringB.length; i++, j++) {
    if (stringA[j] !== stringB[i])
      return -1
    if (j === stringA.length - 1 && i !== stringB.length - 1) {
      j = -1;
      counter += 1;
    }
  }
  return counter;
};

console.log(repeatedStringMatch("a", "aa"));