# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end


Birthday.create([
                { given_name: 'Ben',
                  family_name: 'Adamski',
                  nickname: 'VapeKing',
                   born_on: '2017-01-01'},
                { given_name: 'Rachel',
                  family_name: 'Stevens',
                 nickname: 'Horse Enthusiast',
                 born_on: '2017-01-02'},
                { given_name: 'Julie',
                  family_name: 'Carroll',
                 nickname: 'Getting everyone jobs',
                 born_on: '2017-01-03' },
                { given_name: 'Lu',
                  family_name: 'Nathan',
                 nickname: 'iPhone guru',
                 born_on: '2017-01-04' },
                { given_name: 'Naida',
                  family_name: 'the Pollster',
                 nickname: 'Keeping us all caffinated',
                 born_on: '2017-01-05' }
              ])
