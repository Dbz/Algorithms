describe('Anagrams', function() {
  it('should return all of the anagrams for "abc"', function () {
    expect(anagrams('abc')).toEqual(['abc', 'acb', 'bac', 'bca', 'cab', 'cba']);
  });
});
