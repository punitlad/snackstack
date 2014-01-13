require 'spec_helper'

describe User do
  it 'is invalid if email is not a thoughtworks email' do
    User.new(email: "blahblah@example.com").should have(1).error_on :email
  end

  it 'is valid if email is a thoughtworks email' do
    User.new(email: "blahblah@thoughtworks.com").should have(0).error_on :email
  end

  it 'does not raise exception if email is nil' do
    expect { User.create(email: nil) }.to_not raise_error
  end

  it 'is invalid if email is just @thoughtworks.com' do
    User.new(email: "@thoughtworks.com").should have(1).error_on :email
  end
end