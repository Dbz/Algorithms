# You are a product manager and currently leading a team to develop a new product.
# Unfortunately, the latest version of your product fails the quality check.
# Since each version is developed based on the previous version,
# all the versions after a bad version are also bad.
#
# Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one,
# which causes all the following ones to be bad.
#
# You are given an API bool is_bad_version?(version) which will return whether version is bad.
# Implement a function to find the first bad version.
# You should minimize the number of calls to the API.
# The is_bad_version? API is already defined for you.

# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version?(version)
#   version >= 69 ? true : false
# end

# @param {Integer[]} versions
# @return {Integer}

def first_bad_version(versions)
  # binary search
  midpoint       = (versions.length - 1) / 2
  middle_version = versions[midpoint]
  return 1 if middle_version == versions.first

  if is_bad_version?(middle_version)
    first_bad_version(versions[0..midpoint])
  else
    midpoint + first_bad_version(versions[midpoint..-1])
  end
end
