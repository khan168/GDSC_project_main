class ProcessingResponse {
  final bool processingOK;
  final String errorMessage;

  ProcessingResponse({required this.processingOK, required this.errorMessage});

  ProcessingResponse.ok()
      : this(
    processingOK: true,
    errorMessage: "",
  );

  ProcessingResponse.erro(String errorMessage)
      : this(
    processingOK: false,
    errorMessage: errorMessage,
  );
}
