const getHashTags = (headline) => {
  return headline
    .split(' ')
    .sort((a, b) => {
      return b.length - a.length;
    })
    .slice(0, 3)
    .map((el) => {
      return '#' + el;
    });
};

console.log(getHashTags('How the Avocado Became the Fruit of the Global Trade'));
console.log(getHashTags('Why You Will Probably Pay More for Your Christmas Tree This Year'));
console.log(getHashTags('Hey Parents, Surprise, Fruit Juice Is Not Fruit'));
console.log(getHashTags('Visualizing Science'));
