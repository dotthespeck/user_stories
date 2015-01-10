class CategoriesController < ApplicationController
  def get_part(part_type, category)
    pt = PartType.find_by(name: part_type)
    ct = Category.find_by(name: category)
    parts = StoryPart.where(category: ct, part_type: pt)
    parts.shuffle.first.piece
  end

  def create_story(category_name)
    if category_name == "Launch"
      example1 = get_part("phrase", "Launch")
      example2 = get_part("phrase", "Launch")
      return "As a user, I want to #{example1} so that I can #{example2}."
    elsif category_name == "Pop Songs"
      example1 = get_part("phrase", "Pop Songs")
      example2 = get_part("phrase", "Pop Songs")
      return "As a user, I want to #{example1} so that I can #{example2}."
    elsif category_name == "Industry"
      example1 = get_part("verb", "Industry")
      example2 = get_part("noun", "Industry")
      example3 = get_part("verb", "Industry")
      example4 = get_part("noun", "Industry")
      return "As a user, I want to #{example1} #{example2} so that I can #{example3} #{example4}."
    elsif category_name == "General"
      example1 = get_part("verb", "General")
      example2 = get_part("noun", "General")
      example3 = get_part("verb", "General")
      example4 = get_part("noun", "General")
      return "As a user, I want to #{example1} #{example2} so that I can #{example3} #{example4}."
    end
  end


  def show
    @story = create_story(Category.find(params[:id]).name)
  end
end
