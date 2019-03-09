const compression = (str) => {
  const strArray = str.split('');
  const ret = [];
  let currChar = strArray[0];
  let currCount = 1;
  for (let i = 1; i <= strArray.length; i++) {
    const char = strArray[i];
    if (currChar === char) {
      currCount += 1;
    } else {
      ret.push(`${currChar}${currCount}`)
      currChar = char;
      currCount = 1;
    }
  };
  return ret.join('');
}

console.log(compression('aAB'));