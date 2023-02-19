class Heigth < ActiveHash::Base
  self.data = [
   { id: 1, name: '---' },
   { id: 2, name: '140' },
   { id: 3, name: '145' },
   { id: 4, name: '150' },
   { id: 5, name: '155' },
   { id: 6, name: '160' },
   { id: 7, name: '165' },
   { id: 8, name: '170' },
   { id: 9, name: '175' },
   { id: 10, name: '180' },
   { id: 11, name: '185' },
   { id: 12, name: '190' },
   { id: 13, name: '195' },
   { id: 14, name: '200' }
  ]

  include ActiveHash::Associations
  has_many :apecs

end