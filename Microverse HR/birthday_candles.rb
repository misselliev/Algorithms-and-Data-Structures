def birthdayCakeCandles(ar)
  candle = ar.max
  ar.select { |height| height == candle }.count
end