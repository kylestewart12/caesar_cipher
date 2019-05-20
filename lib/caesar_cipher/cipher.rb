
class Cipher
  attr_reader :original, :shift, :encrypted
  def initialize(attributes)
    @original = attributes[:original]
    @shift = attributes[:shift].to_i
    @encrypted = encrypt(@original, @shift)
  end

  def is_upper?(character)
    character =~ /[[:upper:]]/
  end

  def is_lower?(character)
    character =~ /[[:lower:]]/
  end

  def encrypt(text, letters_to_shift)
    text_array = text.split("")
    text_array.each_with_index do |character, index|
      puts character
      if is_upper?(character)
        text_array[index] = ((character.ord - 65 + letters_to_shift) % 26 + 65).chr
      elsif is_lower?(character)
        text_array[index] = ((character.ord - 97 + letters_to_shift)% 26 + 97).chr
      end
    end
    return text_array.join("")
  end

end
