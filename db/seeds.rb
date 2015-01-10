require 'csv'

Category.destroy_all
general = Category.create(name: 'General')
industry = Category.create(name: 'Industry')
launch = Category.create(name: 'Launch')
pop_songs = Category.create(name: 'Pop Songs')

PartType.destroy_all
noun = PartType.create(name: 'noun')
verb = PartType.create(name: 'verb')
phrase = PartType.create(name: 'phrase')

StoryPart.destroy_all
CSV.foreach("public/lists/huge_list_nouns.csv") do |line|
    StoryPart.create!(piece: line.first, category: general, part_type: noun)
end

CSV.foreach("public/lists/huge_list_verbs.csv") do |line|
    StoryPart.create!(piece: line.first, category: general, part_type: verb)
end

CSV.foreach("public/lists/songs.csv") do |line|
    StoryPart.create!(piece: line.first, category: pop_songs, part_type: phrase)
end

CSV.foreach("public/lists/launch.csv") do |line|
    StoryPart.create!(piece: line.first, category: launch, part_type: phrase)
end

CSV.foreach("public/lists/work_phrases.csv") do |line|
    StoryPart.create!(piece: line.first, category: industry, part_type: noun)
end

CSV.foreach("public/lists/work.csv") do |line|
    StoryPart.create!(piece: line.first, category: industry, part_type: verb)
end
