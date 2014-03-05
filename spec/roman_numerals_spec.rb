require('roman_numerals')
require('rspec')

describe('romanify') do
  it('converts a number to a single roman numeral') do
    romanify(1).should(eq("I"))
  end
  it('converts the number three to roman numerals') do
    romanify(3).should(eq("III"))
  end
  it('converts the number four to roman numerals') do
    romanify(4).should(eq("IV"))
  end
  it('converts a number which requires more than one symbol to express in numerals') do
    romanify(8).should(eq("VIII"))
  end
  it('converts a large number 999 into roman numerals') do
    romanify(999).should(eq("CMXCIX"))
  end
  it('converts a large number 3999 to roman numerals') do
    romanify(3999).should(eq("MMMCMXCIX"))
  end
end

describe('deromanify') do
  it('converts a Roman numeral to a single number') do
    deromanify("I").should(eq(1))
  end
  it('converts the Roman numeral III to the number 3') do
    deromanify("III").should(eq(3))
  end
  it('converts a roman numeral "X" to the number 10') do
    deromanify('X').should(eql(10))
  end
  it('converts roman numeral "XV" to number 15') do
    deromanify('XIV').should(eq(14))
  end
  it('converts roman numeral 999 to a number') do
    deromanify('CMXCIX').should(eq(999))
  end
  it('converts roman numeral 3999 to a number') do
    deromanify('MMMCMXCIX').should(eq(3999))
  end
end

