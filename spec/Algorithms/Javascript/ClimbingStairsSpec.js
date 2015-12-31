describe('ClimbingStairs', function() {
  it('should give the correct amount of combinations for 0 stairs', function () {
    expect(climbStairs(0)).toEqual(0);
  });

  it('should give the correct amount of combinations for 1 stairs', function () {
    expect(climbStairs(1)).toEqual(1);
  });

  it('should give the correct amount of combinations for 2 stairs', function () {
    expect(climbStairs(2)).toEqual(2);
  });

  it('should give the correct amount of combinations for 3 stairs', function () {
    expect(climbStairs(3)).toEqual(3);
  });
});
