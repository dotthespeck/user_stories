require 'csv'

Category.destroy_all
general = Category.create(name: 'General')
industry = Category.create(name: 'Industry')
launch = Category.create(name: 'Launch')
pop_songs = Category.create(name: 'Pop Songs')

PartType.destroy_all
general_noun = PartType.create(name: 'General noun')
general_verb = PartType.create(name: 'General verb')
industry_noun = PartType.create(name: 'Industry noun')
industry_verb = PartType.create(name: 'Industry verb')
launch_phrase = PartType.create(name: 'Launch phrase')
pop_song_phrase = PartType.create(name: 'Pop song phrase')

StoryPart.destroy_all
CSV.foreach("public/lists/huge_list_nouns.csv") do |phrases|
  phrases.each do
    StoryPart.create!(piece: phrases, category: general, part_type: general_noun)
  end
end

CSV.foreach("public/lists/huge_list_verbs.csv") do |phrases|
  phrases.each do
    StoryPart.create!(piece: phrases, category: general, part_type: general_verb)
  end
end

CSV.foreach("public/lists/songs.csv") do |phrases|
  phrases.each do
    StoryPart.create!(piece: phrases, category: pop_songs, part_type: pop_song_phrase)
  end
end

CSV.foreach("public/lists/launch.csv") do |phrases|
  phrases.each do
    StoryPart.create!(piece: phrases, category: launch, part_type: launch_phrase)
  end
end

CSV.foreach("public/lists/work_phrases.csv") do |phrases|
  phrases.each do
    StoryPart.create!(piece: phrases, category: industry, part_type: industry_noun)
  end
end

CSV.foreach("public/lists/work.csv") do |phrases|
  phrases.each do
    StoryPart.create!(piece: phrases, category: industry, part_type: industry_verb)
  end
end
