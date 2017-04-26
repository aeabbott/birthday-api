class BirthdaySerializer < ActiveModel::Serializer
  attributes :id, :given_name, :family_name, :nickname, :born_on
end
