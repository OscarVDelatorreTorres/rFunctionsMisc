# Esta librería es para leer de repositorios de github privados como los míos:

if (!require(httr)) {install.packages('httr')
  library(httr)} else {library(httr)} 

privateGitHubRead=function(GitHubURL,github_email,github_personal_access_token){
script <-
    GET(
      url=GitHubURL,
      authenticate({github_email}, {github_personal_access_token}),     # Instead of PAT, could use password
      accept("application/vnd.github.v3.raw")
    ) %>%
    content(as = "text")
  
  # Evaluate and parse to global environment
  #eval(parse(text = script))
  source(script)

print("GitHub private repository reading function uploaded in you R environment...")
}
