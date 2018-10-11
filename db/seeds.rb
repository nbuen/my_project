ApplicationRecord.connection.reconnect!

require 'faker'

Store.destroy_all
Genre.destroy_all
Book.destroy_all
Review.destroy_all

10.times {
	Store.create(name: Faker::Coffee.unique.blend_name,
			address: Faker::Address.full_address,
			latitude: Faker::Address.latitude,
			longitude: Faker::Address.longitude)
}

10.times {
	title_genre = Genre.create(title: Faker::Book.unique.genre)
		15.times {
			title_book = Book.create(title: Faker::Book.unique.title,
				author: Faker::Book.author,
				publisher: Faker::Book.publisher,
				genre_name: title_genre[:title])
			5.times {
				Review.create(title: Faker::Lorem.unique.sentence(3),
					comment: Faker::Lorem.paragraphs(1),
					book_title: title_book[:title])
			}
		}
}

puts "data loaded success"