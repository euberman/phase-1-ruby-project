# Phase - 1 Ruby Project - Flatiron School

# Active Record Association Methods

## Objectives

- Understand the common methods we have access to from our Active Record
   associations
- Use the methods that Active Record gives you based on your associations

Previously, we learned what Active Record associations are and how to use them.
In this lab, we are going to start with the association relationships already
coded for `Songs`, `Genres`, and `Artists`. These associations look like this:

- Teams have many players.
- Teams have many games.
- Teams belong to a Conference.

- Player belongs to an team.

- Games have many teams.

- A conference has many teams.
- A conference has many players through teams.

You may recall that by writing a few migrations and making use of the
appropriate Active Record macros, we will be able to:

- ask a about its songs and genres
- ask a Song about its genre and its artist
- ask a Genre about its songs and artists.

We will build these associations through the use of Active Record migrations.

### Building our Migrations

Run `rake db:migrate` in your terminal to execute our table
creations.

```ruby
class Player < Active Record::Base
  belongs_to :team
  belongs_to :conference
end
```

```ruby
class Team < Active Record::Base
  has_many :players
  has_many :games
  belongs_to :conference
end
```

```ruby
class Game < Active Record::Base
  has_and_belongs_to_many :teams
  has_many :teams
  has_many :players, through: :teams
  belongs_to :conference
end
```

```ruby
class Conference < Active Record::Base
  has_many :teams
  has_many :players, through: :teams
end
```