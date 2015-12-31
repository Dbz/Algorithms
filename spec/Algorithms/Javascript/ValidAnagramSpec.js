describe('ValidAnagram', function() {
  it('should return true that "abc" is an anagram of "cba"', function () {
    expect(validAnagram('abc', 'cba')).toBeTruthy()
  });

  it('should return true that "stressed" is an anagram of "desserts"', function () {
    expect(validAnagram('stressed', 'desserts')).toBeTruthy()
  });

  it('should return false that "stressed!" is an anagram of "breakfast"', function () {
    expect(validAnagram('stressed!', 'breakfast')).toBeFalsy()
  });
});
