const longestNonrepeatingSubstring = (str) => {
  const newArray = []
  str.split('').forEach(char => {
    if(!newArray.includes(char)) {
      newArray.push(char)
    }
  })
  const newStr = newArray.join('')
  console.log(newStr)
};




longestNonrepeatingSubstring("abcabcbb")

longestNonrepeatingSubstring("aaaaaa")

longestNonrepeatingSubstring("abcde")

longestNonrepeatingSubstring("abcda")