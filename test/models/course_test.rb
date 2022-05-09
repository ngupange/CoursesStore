require "test_helper"

class CourseTest < ActiveSupport::TestCase

  test "Course attributes must not be empty" do
    course = Course.new
    assert course.invalid?
    assert course.errors[:title].any?
    assert course.errors[:classfication].any?
    assert course.errors[:language].any?
    assert course.errors[:status].any?
    assert course.errors[:instructor].any?
    assert course.errors[:description].any?
    assert course.errors[:cover].any?
    # assert course.errors[:status].any?
  end

  # test "the truth" do
  #   assert true
  # end
end
