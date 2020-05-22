integ_nums1 = []

File.open("nums1.txt").each do |line1|
  integ_nums1 = line1.split.map{ |num| num.to_i}
end

integ_nums2 = []

File.open("nums2.txt").each do |line2|
  integ_nums2 = line2.split.map{ |num| num.to_i}
end

united_nums = []
united_nums << (integ_nums1 - integ_nums2).join(", ")
united_nums << (integ_nums2 - integ_nums1).join(", ")

united_nums_file = File.open("nums-unique.txt", "w+")
united_nums_file.write united_nums.join(", ")
united_nums_file.close
