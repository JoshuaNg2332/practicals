def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) # here we want to change ... to .. because its a range excluding Z currently. .. incl. Z.
  p cipher #We use 'p cipher' here so we can understand all the characters that are being used but notice that for starts, z is missing from the list. This is due to the A...Z
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join # we can use p here so we can see the output of our minor correction above.
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars) # same as encoding, we want to correct the ... to .. to incl. Z.
  plaintext_chars = ciphertext.chars.map do |char|
    # we can use p char.ord to get a better understanding of what this does.
    cipher[65 - char.ord] # what we've learnt from the above is that the issue is isolated to the caluclation. If you start at 65 and minus the index values of the numbers, we'll go into minus. So you can rearrange this to correct the issue.
  end
  p plaintext_chars.join # We want to P this straight away so we can see what the current output is and see the corrected output. 
end

#encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"