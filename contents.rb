chapters = {
  "Chapter 1: Numbers" => "page 1",
  "Chapter 2: Letters" => "page 72",
  "Chapter 3: Variables" => "page 118"
}

lineWidth = 60
puts "Table of Contents".center lineWidth
chapters.each do |chapter, page|
  puts chapter.ljust(lineWidth/2) + page.rjust(lineWidth/2)
end
