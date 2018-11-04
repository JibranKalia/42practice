const lookSay = (start, iterations) => {
const sequence = [];
  sequence.push(start);
  for (let i = 0; i < iterations; i++) {
    sequence.push(pushOntoSequence(sequence[sequence.length - 1]));
  }
  return sequence;
}

const pushOntoSequence = (lastString) => {
  const lastStringArray = lastString.split('');
  const builtString = [];
  let lastChar = undefined;
  let counter = 0;
  for (let i = 0; i <= lastStringArray.length; i++) {
    const currChar = lastStringArray[i] || undefined;
    if (lastChar) {
      if (currChar === lastChar) {
        counter += 1;
      } else {
        builtString.push(`${counter}${lastChar}`)
        counter = 1;
        lastChar = currChar;
      }
    } else {
      lastChar = currChar;
      counter += 1 
    }
  }
  return builtString.join('');
}

console.log(lookSay('1', 10));