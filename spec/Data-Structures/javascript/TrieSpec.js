describe('Trie', function() {
  var trie;

  beforeEach(function () {
    trie = new Trie();
  });

  it('should be able to tell if it contains a word', function () {
    trie.addWord("hello");
    expect(trie.valid("hello")).toEqual([true, true]);
  });
});
