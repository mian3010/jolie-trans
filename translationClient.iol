include "translationInterface.iol"
include "console.iol"

outputPort TranslationOutput {
  Location: "socket://localhost:8000"
  Protocol: http
  Interfaces: TranslationInterface
}

main {
  translate@TranslationOutput("from")(to);
  println@Console(to)()
}
