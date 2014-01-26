type TranslationRequest:void {
  .from:string
}

interface TranslationInterface {
  RequestResponse: translate(TranslationRequest)(string)
}
