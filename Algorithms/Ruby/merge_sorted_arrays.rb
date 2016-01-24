def merge(nums1, m, nums2, n)
  while m >= 0 && n >= 0
    if nums1[m] > nums2[n]
      nums1[m + n - 1] = nums1[m]
      m -= 1
    else
      nums1[m + n - 1] = nums2[n]
      n -= 1
    end
  end

  while n > 0
    nums1[m + n - 1] = nums2[n - 1]
    n -= 1
  end
end
