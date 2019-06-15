require 'rails_helper'

RSpec.describe User, type: :model do

  describe "validation" do

    it "is exception all null" do
      user = User.new()
      expect(user).not_to be_valid
    end

    it "is exception name null" do
      user = User.new(
        email: "test@email.com",
        password: "password"
      )
      expect(user).not_to be_valid
    end

    it "is exception email null" do
      user = User.new(
        name:  "tester",
        password: "password"
      )
      expect(user).not_to be_valid
    end

    it "is exception password null" do
      user = User.new(
        name:  "tester",
        email: "test@email.com",
      )
      expect(user).not_to be_valid
    end

    it "is normal" do
      user = User.new(
        name:  "tester",
        email: "test@email.com",
        password: "password",
      )
      expect(user).to be_valid
    end

  end

  # pending "add some examples to (or delete) #{__FILE__}"
end
