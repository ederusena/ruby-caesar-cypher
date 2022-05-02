def caesar_cipher(message, shift)
    result = ''
    message.each_char do |char|
      base = char.ord < 91 ? 65 : 97

      # Modifica Lowercase & Uppercase
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        sub = char.ord - base
        sub_shift = sub + shift
        module_result = sub_shift % 26
        rotation =  module_result + base
        result += rotation.chr
        # Mantém espaços e pontuaçoões
      else
        result += char
      end
    end
    result
  end

# puts caesar_cipher("Eder Sena", 5)