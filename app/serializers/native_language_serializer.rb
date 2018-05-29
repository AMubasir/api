class NativeLanguageSerializer < ActiveModel::Serializer
  attributes :id, :us, :indonesia, :javanese
  belongs_to :category_language
end