  
workflow "Generate PlantUML Images" {
  resolves = ["Generate UML"]
  on = "push"
}

action "Generate UML" {
  uses = "lokkju/github-action-plantuml@master"
  args = ["user/sign-up.puml","user/sign-in.puml"]
}
