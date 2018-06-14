# Batch Insert Workshop

To start your project:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Set up Github API Token: https://developer.github.com/v4/guides/forming-calls/#authenticating-with-graphql
  * Copy .env_sample to .env; put the API token in the ENV var; run `source .env`
  * Start Iex: `iex -S mix`

  ## Tables to use for Part 1

  * Languages
  * Repos
  * Repo Languages

  ## Instructions

  1. Retrieve Unique Languages from JSON Payload.
  2. Insert all Unique Languages in one query, returning values (hint: Repo.insert_all with on_conflict & returning clause)
  3. Insert all Repos, and return all values from the Insert.
  4. Loop back through the payload, mapping the IDs returned from Languages and Repos (Steps 2 & 3)
  5. Insert these into the repo_languages table.

  ## Where to begin:

  1. If you have a Github API Token set up (from Start your project section): You can run `GithubApi.repos` to fetch the first 10 repos. The file is located at lib/batch_insert_workshop/services/github_api.ex`

  OR

  2. If you don't have a token set up, you can get a sample payload from: `GithubPayload.sample`



