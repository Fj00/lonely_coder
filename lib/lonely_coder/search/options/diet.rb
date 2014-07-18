class OKCupid
  class DietFilter < Filter
    def lookup(values)
      # lookup the diet values and sum them. I think OKC is doing some kind of base2 math on them
      values.collect {|v| MagicNumbers::Diet[v.downcase]}.inject(0, :+)
    end
  end
  
  class Search
    def add_ethnicity_option(values)
      @filters << DietFilter.new('diet', values)
    end
  end
end