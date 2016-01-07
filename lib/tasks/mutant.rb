# Class to be use in FudgeFile and run the mutant test
class MutantTask < Fudge::Tasks::Task
  def self.name
    :mutant
  end

  def run(*)
    out = false
    classes.each do |c|
      out = system("RAILS_ENV=test bundle exec mutant -r
        ./config/environment --use rspec #{c}")
      break unless out
    end
    out
  end

  def classes
    return @classes unless @classes.nil?
    @classes = []

    classes = Dir['app/models/*.rb', 'app/controllers/*.rb'].map do |path|
      path.match(/(\w+).rb/)
    end.compact
    classes.each do |c|
      @classes << camelize(c)
    end
    @classes
  end

  def camelize(string)
    mod_string = ''
    string.split('_').each do |part|
      mod_string += "#{part[0].upcase}#{part[1..-1]}"
    end
    mod_string
  end
end
