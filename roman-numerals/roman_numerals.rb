# Allows conversion of integers to roman numerals
class Integer
  def to_roman
    integer = self
    numeral = ''
    DICT.each do |arabic, roman|
      while integer >= arabic
        numeral << roman
        integer -= arabic
      end
    end
    numeral
  end

  DICT =
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }.freeze
end

module BookKeeping
  VERSION = 2
end
