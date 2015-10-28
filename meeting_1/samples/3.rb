{
  empty_array: Array.new,
  empty_hash: {},
  empty_string: '',
  zero: 0,
  false: false,
  nil: nil
}.each do |k, v|
  unless v
    puts k.to_s + ' is falsy'
  else
    puts k.to_s + ' is truthy'
  end
end
