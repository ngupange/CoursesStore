json.extract! course, :id, :title, :classfication, :language, :status, :price, :instructor, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
