include "translationInterface.iol"

execution {concurrent}
    
inputPort TranslationInput {
  Location: "socket://localhost:8000"
  Protocol: http {
    .format = "json";
  }
  Interfaces: TranslationInterface
}

main {
  translate(from)(to) {
    to = from.from
  }
}
