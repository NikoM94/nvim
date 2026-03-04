; extends

((comment) @_gql_comment
  (#match? @_gql_comment "^/\\*\\s*GraphQL\\s*\\*/$")
  .
  (template_string
    (string_fragment) @injection.content)
  (#set! injection.language "graphql"))
