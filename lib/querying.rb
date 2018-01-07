def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters GROUP BY motto ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(*) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  " SELECT Authors.name, Subgenres.name
    FROM series
    LEFT OUTER JOIN authors, subgenres
    ON series.subgenre_id = subgenres.id
    WHERE authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  " SELECT Series.title
    FROM series
    JOIN characters
    ON Series.id = Characters.series_id
    WHERE Characters.species = 'human'
    GROUP BY Series.title
    ORDER BY COUNT(*) DESC
    LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  " SELECT Characters.name, COUNT(character_books.character_id)
    FROM character_books
    LEFT OUTER JOIN characters
    ON Character_books.character_id = Characters.id
    GROUP BY Character_books.character_id
    ORDER BY COUNT(character_books.character_id) DESC, Characters.name;"
end
