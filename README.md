
# Introduction

Displays information of about 800 pokemons

# Deployment

<https://pmdpokemonapi.herokuapp.com/api/v1/pokemons>

# Full Documentation with Postman

<https://documenter.getpostman.com/view/15686431/TzRPk9pM>

# Ruby version

ruby '3.0.1'

# Database

- env_local = sqlite3
- env_production = postgres

# Features

- List of Pokemons and their information
- Pagination
- Pagination meta data for fetch()

# How to setup locally

To set up this application locally,

- Clone the application from git at <https://github.com/Claudius007/pokemon_api.git>
- Run bundle install in your terminal to ensure the gem dependecies are installed
- Run rails sever

# How to run the test

Run 'rails test' in the terminal

# Requests

GET: <https://pmdpokemonapi.herokuapp.com/api/v1/pokemons>
GET: <https://pmdpokemonapi.herokuapp.com/api/v1/pokemons/1>
POST: <https://pmdpokemonapi.herokuapp.com/api/v1/pokemons>
PUT: <https://pmdpokemonapi.herokuapp.com/api/v1/pokemons/1>
DEL: <https://pmdpokemonapi.herokuapp.com/api/v1/pokemons/3>

# Support

If you need support on how to use the pmdpokemonapi send email at mofehintoluwaclaudius@gmail.com
