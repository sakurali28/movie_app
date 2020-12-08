Genre.create!([
  { name: "action" },
  { name: "animation" },
  { name: "mystery" },
])
Actor.create!([
  { first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", age: 44, movie_id: 3 },
  { first_name: "Heath", last_name: "Ledger", known_for: "The Dark Knight", age: 28, movie_id: 5 },
  { first_name: "Tom", last_name: "Holland", known_for: "Spiderman", age: 24, movie_id: 4 },
  { first_name: "Lisa", last_name: "Shimizu\n", known_for: "\nsomething", age: 24, movie_id: 3 },
  { first_name: "Lisa", last_name: "Shimizu", known_for: "something", age: 24, movie_id: 3 },
  { first_name: "Lisa", last_name: "Shimizu", known_for: "something", age: 24, movie_id: 3 },
  { first_name: "Lisa", last_name: "Shimizu", known_for: "something", age: 24, movie_id: 3 },
  { first_name: "Lisa", last_name: "Shimizu", known_for: "something", age: 24, movie_id: 3 },
])
Movie.create!([
  { title: "The Dark Knight", year: 2008, plot: "Joker vs. Batman", director: "Christopher Nolan", english: true },
  { title: "Princess Mononoke", year: 1997, plot: "harmony between gods, humans and nature crumbles", director: "Miyazaki Hayao", english: false },
  { title: "Spiderman", year: 2017, plot: "Peter Parker starts to embrace his newfound identity\n", director: "Jon Watts", english: true },
  { title: "Sherlock", year: 2010, plot: "Contemporary version of detective stories", director: "Mark Gatiss", english: true },
])
MovieGenre.create!([
  { genre_id: 1, movie_id: 4 },
  { genre_id: 1, movie_id: 5 },
  { genre_id: 2, movie_id: 1 },
  { genre_id: 3, movie_id: 3 },
])
User.create!([
  { name: "michael", email: "michael@example.com", password_digest: "$2a$12$mndOSeC9Y.Tv.panyrshwuZh3c7XbOssLix4Vl..RXyQVYmb5Lkzq", admin: false },
  { name: "lisa", email: "lisa@example.com", password_digest: "$2a$12$tBsySKzHJ9tJRmK.LFrPGuFz5Moad6s0WGxmwjrsRB7I0KsE8.dda", admin: true },
])
