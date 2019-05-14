def transpose(string)
  copy = string
  output = string
  idx = 0

  while !idx.nil? do
    idx = output.index(/g{1,}n{1,}/, 0)
    if output.match(/g{1,}n{1,}/)
      asset = output[idx, output.length].match(/n{1,}/)
      basset = output[idx, output.length].match(/g{1,}/)
      output = output[0, idx] + asset.to_s + basset.to_s
      num = output.length
      copy[0, num] = output
      output = copy
    end
  end
  output
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings

puts transpose('rignadingdiggn!')
# => ringadingdingg!

puts transpose('gngngnnggnngggnnn')
# => nnnnnnnnngggggggg