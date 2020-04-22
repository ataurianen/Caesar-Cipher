# frozen_string_literal: true

def caesar_cipher(string, shift = 0)
  string.split('').map! do |char|
    if char.match(/[a-z]/)
      ((char.ord - 97 + shift) % 26 + 97).chr
    elsif char.match(/[A-Z]/)
      ((char.ord - 65 + shift) % 26 + 65).chr
    else
      char
    end
  end.join
end
