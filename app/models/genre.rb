class Genre < ActiveHash::Base
  self.data = [
   { id: 1, name: '---' },
   { id: 2, name: '朝' },
   { id: 3, name: '昼' },
   { id: 4, name: '晩' }
  ]

  include ActiveHash::Associations
  has_many :schedules

end