namespace :export do
  desc "Prints Tutorials.all in a seeds.rb way."
  task :seeds_format => :environment do
    Tutorial.order(:id).all.each do |tutorial|
      puts "Tutorial.create(#{tutorial.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

  desc "Prints Series.all in a seeds.rb way."
  task :seeds_format => :environment do
    Series.order(:id).all.each do |series|
      puts "Series.create(#{series.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end

end