json = []
i = 0
while i < @movies.length
  @movie = @movies[i]
  info = {
    title: @movie.title,
    year: @movie.year,
    plot: @movie.plot,
  }
  json << info
  i += 1
end

return json
