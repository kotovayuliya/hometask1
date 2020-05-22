integ_nums1 = []

File.open("nums1.txt").each do |line1|
  integ_nums1 = line1.split.map{ |num| num.to_i}
end

integ_nums2 = []

File.open("nums2.txt").each do |line2|
  integ_nums2 = line2.split.map{ |num| num.to_i}
end

united_nums_file = File.open("nums-common.txt", "w+")
united_nums_file.write (integ_nums1 & integ_nums2).join(", ")
united_nums_file.close
