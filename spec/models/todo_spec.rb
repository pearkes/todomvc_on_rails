require "rails_helper"

describe Todo do
  describe "title=" do
    it "strips spaces from the title" do
      todo = Todo.new
      todo.title = "foo bar "
      expect(todo.title).to eq("foo bar")
    end
  end
end
