module Enumerable
  def eenie_meenie(picker: :default, exclusion: false)
    words = EenieMeenie::STEPS

    if picker == :my_mother
      words += EenieMeenie::MOTHER_STEPS
      words += exclusion ? EenieMeenie::MOTHER_EXCLUSION_STEPS : EenieMeenie::MOTHER_SINGLE_SELECT_STEPS
    end

    choice_word =
      if picker == :my_mother
        exclusion ? 'game' : 'it'
      else
        'mo'
      end

    if exclusion
      remaining = self.dup
      until remaining.size == 1 do
        mapped = EenieMeenie.mapped_words(words, remaining)
        remaining.delete(mapped.delete(choice_word))
      end
      remaining.first
    else
      EenieMeenie.mapped_words(words, self)[choice_word]
    end
  end
end
