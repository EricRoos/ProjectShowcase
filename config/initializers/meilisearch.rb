MeiliSearch::Rails.configuration = {
  meilisearch_host: ENV.fetch('MEILISEARCH_HOST', 'http://0.0.0.0:7700'), # example: http://localhost:7700
  meilisearch_api_key: 'foo',
}
