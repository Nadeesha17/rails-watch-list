# spec/models/movie_spec.rb
require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'is valid with a title, overview, and rating' do
    movie = Movie.new(title: "Inception", overview: "A mind-bending thriller.", poster_url: "http://image.url", rating: 8.8)
    expect(movie).to be_valid
  end

  it 'is invalid without a title' do
    movie = Movie.new(overview: "A mind-bending thriller.", poster_url: "http://image.url", rating: 8.8)
    expect(movie).to_not be_valid
  end

  it 'is invalid without an overview' do
    movie = Movie.new(title: "Inception", poster_url: "http://image.url", rating: 8.8)
    expect(movie).to_not be_valid
  end

  it 'is invalid without a rating' do
    movie = Movie.new(title: "Inception", overview: "A mind-bending thriller.", poster_url: "http://image.url")
    expect(movie).to_not be_valid
  end

  it 'is invalid with a rating greater than 10' do
    movie = Movie.new(title: "Inception", overview: "A mind-bending thriller.", poster_url: "http://image.url", rating: 15.0)
    expect(movie).to_not be_valid
  end

  it 'is invalid with a rating less than 0' do
    movie = Movie.new(title: "Inception", overview: "A mind-bending thriller.", poster_url: "http://image.url", rating: -1.0)
    expect(movie).to_not be_valid
  end
end
