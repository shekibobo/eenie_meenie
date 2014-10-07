require "eenie_meenie/version"
require "eenie_meenie/enumerable/eenie_meenie"

module EenieMeenie
  STEPS = %w(eenie meenie miney mo catcha tiger byits toe ifit hollars letit go eenie meenie miney mo)
  MOTHER_STEPS = %w(my mother picks the very best one to be it and you are)
  MOTHER_SINGLE_SELECT_STEPS = %w(it)
  MOTHER_EXCLUSION_STEPS = %w(not it for this very first game)

  def self.mapped_words(words, enumerable)
    Hash[words.each_with_index.map{|step, index| [step, enumerable[index % enumerable.size]]}]
  end
end
