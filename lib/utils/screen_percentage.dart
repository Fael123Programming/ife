enum ScreenPercentage {
  smoothMarginTop(0.05),
  bigMarginTop(0.23),
  marginTopAForthHalfScreen(0.13),
  sizedBoxAfterBemVindoIfeirinha(0.035),
  formContainerVerticalPadding(0.023),
  formContainerHorizontalPadding(0.097),
  marginInbetweenTextFormFields(0.008),
  smoothMarginRight(0.097),
  buttonMarginTop(0.030),
  buttonWidth(0.51),
  buttonSpecialWidth(0.6),
  buttonHeight(0.069),
  buttonRadius(0.24),
  marginTopAFifthScreen(0.2),
  marginTopFormContainer(0.030),
  marginTopContainerTitle(0.020),
  customCodeInput(0.12),
  customCodeInputVerticalMargin(0.017),
  customCodeInputHorizontalMargin(0.036);

  final double _value;

  const ScreenPercentage(this._value);

  double get value => _value;
}
