require 'foodcritic'

desc 'Run Chef style checks'
FoodCritic::Rake::LintTask.new(:style) do |t|
    t.options = {
        :fail_tags => ['any']
    }
end

task :default => 'style'
