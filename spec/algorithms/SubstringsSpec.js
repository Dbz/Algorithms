describe('Substrings', function() {
  it('should return all the substrings in the string "hi!"', function () {
    expect('hi!'.substrings()).toEqual(['h', 'hi', 'hi!', 'i', 'i!', '!']);
  });
});
