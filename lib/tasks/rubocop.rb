# Class to be use in FudgeFile and run the rubocop
class RuboCopTask < Fudge::Tasks::Task
  def self.name
    :rubocop
  end

  def run(*)
    system('rubocop')
  end

  def check_for
    [/(\d+) offenses detected/, ->(n) { n.to_i >= 0 }]
  end
end
