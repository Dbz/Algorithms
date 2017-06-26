# @param {String} s
# @param {String} t
# @return {Boolean}
def isomorphic?(s, t)
  return false unless s.length == t.length
  map = {}

  (0...s.length).each do |i|
    map['s' + s[i]] = t[i] unless map['s' + s[i]]
    map['t' + t[i]] = s[i] unless map['t' + t[i]]
    return false if t[i] != map['s' + s[i]] || s[i] != map['t' + t[i]]
  end

  true
end
