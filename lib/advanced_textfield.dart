import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

/// A class that holds decoration properties for a text field.
class TextFieldDecoration {
  /// The leading icon displayed inside the text field.
  final Widget? icon;

  /// The color of the leading icon.
  final Color? iconColor;

  /// The text style of the floating label.
  final TextStyle? floatingLabelStyle;

  /// Determines the behavior of the floating label.
  final FloatingLabelBehavior? floatingLabelBehavior;

  /// Defines the alignment of the floating label.
  final FloatingLabelAlignment? floatingLabelAlignment;

  /// A widget that provides additional information below the text field.
  final Widget? helper;

  /// The text displayed below the text field as a helper.
  final String? helperText;

  /// The text style of the helper text.
  final TextStyle? helperStyle;

  /// Maximum number of lines for the helper text.
  final int? helperMaxLines;

  /// The style of the hint text.
  final TextStyle? hintStyle;

  /// The text direction of the hint text.
  final TextDirection? hintTextDirection;

  /// Maximum number of lines for the hint text.
  final int? hintMaxLines;

  /// The duration of the hint fade animation.
  final Duration? hintFadeDuration;

  /// Whether to maintain the hint height.
  final bool? maintainHintHeight;

  /// A widget to display in case of an error.
  final Widget? error;

  /// The error text to be displayed.
  final String? errorText;

  /// The style of the error text.
  final TextStyle? errorStyle;

  /// Maximum number of lines for the error text.
  final int? errorMaxLines;

  /// Whether the field is collapsed.
  final bool? isCollapsed;

  /// Whether the field is dense.
  final bool? isDense;

  /// The padding inside the text field.
  final EdgeInsetsGeometry? contentPadding;

  /// The prefix icon displayed inside the text field.
  final Widget? prefixIcon;

  /// The constraints applied to the prefix icon.
  final BoxConstraints? prefixIconConstraints;

  /// A widget displayed at the start of the text field.
  final Widget? prefix;

  /// A string to be displayed before the input text.
  final String? prefixText;

  /// The style of the prefix text.
  final TextStyle? prefixStyle;

  /// The color of the prefix icon.
  final Color? prefixIconColor;

  /// The suffix icon displayed inside the text field.
  final Widget? suffixIcon;

  /// A widget displayed at the end of the text field.
  final Widget? suffix;

  /// A string to be displayed after the input text.
  final String? suffixText;

  /// The style of the suffix text.
  final TextStyle? suffixStyle;

  /// The color of the suffix icon.
  final Color? suffixIconColor;

  /// The constraints applied to the suffix icon.
  final BoxConstraints? suffixIconConstraints;

  /// The counter widget displayed inside the text field.
  final Widget? counter;

  /// The counter text displayed inside the text field.
  final String? counterText;

  /// The style of the counter text.
  final TextStyle? counterStyle;

  /// Whether the text field should be filled with color.
  final bool? filled;

  /// The background color of the text field.
  final Color? fillColor;

  /// The color when the field is in focus.
  final Color? focusColor;

  /// The hover color of the field.
  final Color? hoverColor;

  /// The default border of the text field.
  final InputBorder? border;

  /// The enabled border of the text field.
  final InputBorder? enabledBorder;

  /// The border when the field is focused.
  final InputBorder? focusedBorder;

  /// The border when there is an error.
  final InputBorder? errorBorder;

  /// The border when the field is focused and has an error.
  final InputBorder? focusedErrorBorder;

  /// Constraints applied to the text field.
  final BoxConstraints? constraints;

  /// Creates a text field decoration with various customization options.
  const TextFieldDecoration({
    this.icon,
    this.iconColor,
    this.floatingLabelStyle,
    this.floatingLabelBehavior,
    this.floatingLabelAlignment,
    this.helper,
    this.helperText,
    this.helperStyle,
    this.helperMaxLines,
    this.hintStyle,
    this.hintTextDirection,
    this.hintMaxLines,
    this.hintFadeDuration,
    this.maintainHintHeight,
    this.error,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.isCollapsed,
    this.isDense,
    this.contentPadding,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.prefixIconColor,
    this.suffixIcon,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.suffixIconColor,
    this.suffixIconConstraints,
    this.counter,
    this.counterText,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.constraints,
  });
}

/// A highly customizable text field widget with advanced features.
///
/// This widget provides a wide range of properties to control the appearance and behavior
/// of a text field, including validation, input formatting, password masking, and more.
class AdvancedTextfield extends StatelessWidget {
  /// The hint text to display when the text field is empty.
  final String hintText;

  /// The label text to display above or inside the text field.
  final String labelText;

  /// The controller for the text field.
  final TextEditingController controller;

  /// An optional controller for confirming a password.
  final TextEditingController? confirmPasswordController;

  /// An optional error message to display when validation fails.
  final String? errorMessage;

  /// Whether the text field should validate as an email address.
  final bool isEmail;

  /// Whether the text field should mask the input as a password.
  final bool isPassword;

  /// Whether the text field should validate as a phone number.
  final bool isPhone;

  /// Whether the text field should only accept numeric input.
  final bool onlyNumbers;

  /// Whether the text field is required.
  final bool isRequired;

  /// Whether the text field is read-only.
  final bool readOnly;

  /// The number of lines to display in the text field.
  final int lines;

  /// Whether the label should float when the text field is focused or has input.
  final bool floatingLabel;

  /// An optional decoration object for the text field.
  final TextFieldDecoration? textFieldDecoration;

  /// An optional initial value for the text field.
  final String? initialValue;

  /// An optional focus node for the text field.
  final FocusNode? focusNode;

  /// An optional input decoration for the text field.
  final InputDecoration? decoration;

  /// An optional keyboard type for the text field.
  final TextInputType? keyboardType;

  /// The capitalization behavior of the text field.
  final TextCapitalization textCapitalization;

  /// An optional text input action for the text field.
  final TextInputAction? textInputAction;

  /// An optional style for the text field's text.
  final TextStyle? style;

  /// An optional strut style for the text field's text.
  final StrutStyle? strutStyle;

  /// An optional text direction for the text field.
  final TextDirection? textDirection;

  /// The text alignment of the text field.
  final TextAlign textAlign;

  /// An optional vertical text alignment for the text field.
  final TextAlignVertical? textAlignVertical;

  /// Whether the text field should automatically focus when it is created.
  final bool autofocus;

  /// An optional cursor visibility for the text field.
  final bool? showCursor;

  /// The character used to obscure the input in a password field.
  final String obscuringCharacter;

  /// Whether the text field should enable autocorrection.
  final bool autocorrect;

  /// An optional smart dashes type for the text field.
  final SmartDashesType? smartDashesType;

  /// An optional smart quotes type for the text field.
  final SmartQuotesType? smartQuotesType;

  /// Whether the text field should enable suggestions.
  final bool enableSuggestions;

  /// An optional maximum length enforcement for the text field.
  final MaxLengthEnforcement? maxLengthEnforcement;

  /// An optional maximum number of lines for the text field.
  final int? maxLines;

  /// An optional minimum number of lines for the text field.
  final int? minLines;

  /// Whether the text field should expand to fill its parent.
  final bool expands;

  /// An optional maximum length for the text field.
  final int? maxLength;

  /// A callback function that is called when the text field's value changes.
  final void Function(String)? onChanged;

  /// A callback function that is called when the text field is tapped.
  final void Function()? onTap;

  /// A callback function that is called when editing is complete.
  final void Function()? onEditingComplete;

  /// A callback function that is called when the text field is submitted.
  final void Function(String)? onFieldSubmitted;

  /// A callback function that is called when the text field is saved.
  final void Function(String?)? onSaved;

  /// Whether the text field is enabled.
  final bool? enabled;

  /// The width of the cursor.
  final double cursorWidth;

  /// An optional height of the cursor.
  final double? cursorHeight;

  /// An optional radius of the cursor.
  final Radius? cursorRadius;

  /// An optional color of the cursor.
  final Color? cursorColor;

  /// An optional error color of the cursor.
  final Color? cursorErrorColor;

  /// An optional keyboard appearance for the text field.
  final Brightness? keyboardAppearance;

  /// The scroll padding for the text field.
  final EdgeInsets scrollPadding;

  /// Whether to enable interactive selection for the text field.
  final bool? enableInteractiveSelection;

  /// An optional text selection controls for the text field.
  final TextSelectionControls? selectionControls;

  /// An optional counter builder for the text field.
  final Widget Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })? buildCounter;

  /// An optional scroll physics for the text field.
  final ScrollPhysics? scrollPhysics;

  /// An optional list of autofill hints for the text field.
  final Iterable<String>? autofillHints;

  /// An optional scroll controller for the text field.
  final ScrollController? scrollController;

  /// An optional restoration ID for the text field.
  final String? restorationId;

  /// Whether to enable IME personalized learning.
  final bool enableIMEPersonalizedLearning;

  /// An optional mouse cursor for the text field.
  final MouseCursor? mouseCursor;

  /// An optional context menu builder for the text field.
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;

  /// An optional spell check configuration for the text field.
  final SpellCheckConfiguration? spellCheckConfiguration;

  /// An optional magnifier configuration for the text field.
  final TextMagnifierConfiguration? magnifierConfiguration;

  /// An optional undo history controller for the text field.
  final UndoHistoryController? undoController;

  /// A callback function that is called when an app private command is received.
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;

  /// Whether the cursor opacity animates.
  final bool? cursorOpacityAnimates;

  /// The selection height style for the text field.
  final ui.BoxHeightStyle selectionHeightStyle;

  /// The selection width style for the text field.
  final ui.BoxWidthStyle selectionWidthStyle;

  /// The drag start behavior for the text field.
  final DragStartBehavior dragStartBehavior;

  /// An optional content insertion configuration for the text field.
  final ContentInsertionConfiguration? contentInsertionConfiguration;

  /// An optional states controller for the text field.
  final WidgetStatesController? statesController;

  /// The clip behavior for the text field.
  final Clip clipBehavior;

  /// Whether stylus handwriting is enabled for the text field.
  final bool stylusHandwritingEnabled;

  /// Whether the text field can request focus.
  final bool canRequestFocus;

  /// Whether to enable shadow for the textfield container.
  final bool shadowEnabled;

  /// Creates an [AdvancedTextfield].
  ///
  /// The [hintText], [label], and [controller] parameters are required.
  ///
  /// The [isEmail], [isPassword], [isPhone], and [onlyNumbers] parameters are mutually exclusive.
  ///
  /// The [isRequired] and [readOnly] parameters cannot both be true.

  AdvancedTextfield({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.errorMessage,
    this.confirmPasswordController,
    this.isEmail = false,
    this.isPassword = false,
    this.isPhone = false,
    this.onlyNumbers = false,
    this.isRequired = false,
    this.readOnly = false,
    this.lines = 1,
    this.floatingLabel = false,
    this.textFieldDecoration,
    this.initialValue,
    this.focusNode,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.minLines,
    this.expands = false,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.maxLength,
    this.maxLines = 1,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.cursorErrorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    this.scrollController,
    this.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
    this.contextMenuBuilder,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.undoController,
    this.onAppPrivateCommand,
    this.cursorOpacityAnimates,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.dragStartBehavior = DragStartBehavior.start,
    this.contentInsertionConfiguration,
    this.statesController,
    this.clipBehavior = Clip.hardEdge,
    this.stylusHandwritingEnabled =
        EditableText.defaultStylusHandwritingEnabled,
    this.canRequestFocus = true,
    this.shadowEnabled = true,
  })  : // Ensure that only one of isEmail, isPassword, isPhone, or onlyNumbers is true
        assert(
          [isEmail, isPassword, isPhone, onlyNumbers]
                  .where((element) => element == true)
                  .length <=
              1,
          'Only one of isEmail, isPassword, isPhone, or onlyNumbers can be true',
        ),
        // Ensure that if readOnly is true, then isEmail, isPassword, isPhone, and onlyNumbers must be false
        assert(
          !(readOnly && (isEmail || isPassword || isPhone || onlyNumbers)),
          'If readOnly is true, then isEmail, isPassword, isPhone, and onlyNumbers must be false',
        ),
        // Ensure that a required field cannot be read-only
        assert(
            !(isRequired && readOnly), 'A required field cannot be read-only');

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isObscured = ValueNotifier<bool>(isPassword);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ValueListenableBuilder<bool>(
        valueListenable: isObscured,
        builder: (context, isObscuredValue, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!floatingLabel) // 🔥 If floatingLabel is false, show label above
                Row(
                  children: [
                    SizedBox(width: 2),
                    Text(labelText,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14)),
                    if (isRequired)
                      const Text(
                        '*',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                  ],
                ),
              Container(
                padding: shadowEnabled
                    ? EdgeInsets.symmetric(horizontal: 10, vertical: 3)
                    : null,
                decoration: shadowEnabled
                    ? BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 2,
                              blurRadius: 8),
                        ],
                      )
                    : null,
                child: TextFormField(
                  controller: controller,
                  readOnly: readOnly,
                  maxLines: lines,
                  maxLength: isPhone ? 10 : null,
                  keyboardType: isPhone || onlyNumbers
                      ? TextInputType.number
                      : TextInputType.text,
                  inputFormatters: isPhone || onlyNumbers
                      ? [FilteringTextInputFormatter.digitsOnly]
                      : [],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: isObscuredValue,
                  // Validator function to validate the input based on various conditions
                  validator: (value) {
                    // Check if the field is required and the value is empty
                    if (isRequired && (value == null || value.isEmpty)) {
                      return errorMessage ?? 'This field is required';
                    }
                    // Check if the input should be a valid email address
                    if (isEmail &&
                        !RegExp(
                          r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
                        ).hasMatch(value!)) {
                      return errorMessage ??
                          'Please enter a valid email address';
                    }

                    // Check if the input should be a valid password
                    if (isPassword) {
                      // Check if the password is at least 8 characters long
                      if (value == null || value.length < 8) {
                        return errorMessage ??
                            'Password must be at least 8 characters long';
                      }

                      // Regular expression to check for uppercase, lowercase, number, and special character
                      RegExp regex = RegExp(
                          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$');

                      // Check if the password matches the regular expression
                      if (!regex.hasMatch(value)) {
                        return errorMessage ??
                            'Password must include uppercase, lowercase, number, and special character';
                      }
                    }

                    // Check if the input should be a valid phone number
                    if (isPhone && !RegExp(r'^\d{10}$').hasMatch(value!)) {
                      return errorMessage ??
                          'Phone number must be exactly 10 digits';
                    }
                    // Check if the input should only contain numeric values
                    if (onlyNumbers && !RegExp(r'^\d+$').hasMatch(value!)) {
                      return errorMessage ?? 'Only numeric values are allowed';
                    }
                    // Check if the input matches the confirm password field
                    if (confirmPasswordController != null &&
                        value != confirmPasswordController!.text) {
                      return errorMessage ?? 'Passwords do not match';
                    }
                    // Return null if there are no validation errors
                    return null;
                  },
                  key: key,
                  focusNode: focusNode,
                  textInputAction: textInputAction,
                  textCapitalization: textCapitalization,
                  style: style,
                  textAlign: textAlign,
                  autofocus: autofocus,
                  initialValue: initialValue,
                  strutStyle: strutStyle,
                  textDirection: textDirection,
                  textAlignVertical: textAlignVertical,
                  showCursor: showCursor,
                  obscuringCharacter: obscuringCharacter,
                  autocorrect: autocorrect,
                  smartDashesType: smartDashesType,
                  smartQuotesType: smartQuotesType,
                  enableSuggestions: enableSuggestions,
                  maxLengthEnforcement: maxLengthEnforcement,
                  minLines: minLines,
                  expands: expands,
                  onChanged: onChanged,
                  onTap: onTap,
                  onEditingComplete: onEditingComplete,
                  onFieldSubmitted: onFieldSubmitted,
                  onSaved: onSaved,
                  enabled: enabled,
                  cursorWidth: cursorWidth,
                  cursorHeight: cursorHeight,
                  cursorRadius: cursorRadius,
                  cursorColor: cursorColor,
                  cursorErrorColor: cursorErrorColor,
                  keyboardAppearance: keyboardAppearance,
                  scrollPadding: scrollPadding,
                  enableInteractiveSelection: enableInteractiveSelection,
                  selectionControls: selectionControls,
                  buildCounter: buildCounter,
                  scrollPhysics: scrollPhysics,
                  autofillHints: autofillHints,
                  scrollController: scrollController,
                  restorationId: restorationId,
                  enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
                  mouseCursor: mouseCursor,
                  contextMenuBuilder: contextMenuBuilder,
                  spellCheckConfiguration: spellCheckConfiguration,
                  magnifierConfiguration: magnifierConfiguration,
                  undoController: undoController,
                  onAppPrivateCommand: onAppPrivateCommand,
                  cursorOpacityAnimates: cursorOpacityAnimates,
                  selectionHeightStyle: selectionHeightStyle,
                  selectionWidthStyle: selectionWidthStyle,
                  dragStartBehavior: dragStartBehavior,
                  contentInsertionConfiguration: contentInsertionConfiguration,
                  statesController: statesController,
                  clipBehavior: clipBehavior,
                  stylusHandwritingEnabled: stylusHandwritingEnabled,
                  canRequestFocus: canRequestFocus,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: textFieldDecoration?.border ?? InputBorder.none,
                    constraints: textFieldDecoration?.constraints,
                    labelText: floatingLabel ? labelText : null,
                    icon: textFieldDecoration?.icon,
                    iconColor: textFieldDecoration?.iconColor,
                    floatingLabelStyle: textFieldDecoration?.floatingLabelStyle,
                    floatingLabelBehavior:
                        textFieldDecoration?.floatingLabelBehavior,
                    hintStyle: textFieldDecoration?.hintStyle,
                    errorText: textFieldDecoration?.errorText,
                    enabledBorder: textFieldDecoration?.enabledBorder,
                    focusedBorder: textFieldDecoration?.focusedBorder,
                    errorBorder: textFieldDecoration?.errorBorder,
                    focusedErrorBorder: textFieldDecoration?.focusedErrorBorder,
                    floatingLabelAlignment:
                        textFieldDecoration?.floatingLabelAlignment,
                    helperText: textFieldDecoration?.helperText,
                    helperStyle: textFieldDecoration?.helperStyle,
                    prefixIcon: textFieldDecoration?.prefixIcon,
                    prefixIconColor: textFieldDecoration?.prefixIconColor,
                    helperMaxLines: textFieldDecoration?.helperMaxLines,
                    hintTextDirection: textFieldDecoration?.hintTextDirection,
                    hintMaxLines: textFieldDecoration?.hintMaxLines,
                    hintFadeDuration: textFieldDecoration?.hintFadeDuration,
                    error: textFieldDecoration?.error,
                    errorStyle: textFieldDecoration?.errorStyle,
                    errorMaxLines: textFieldDecoration?.errorMaxLines,
                    contentPadding: textFieldDecoration?.contentPadding,
                    suffix: textFieldDecoration?.suffix,
                    suffixText: textFieldDecoration?.suffixText,
                    suffixStyle: textFieldDecoration?.suffixStyle,
                    suffixIconColor: textFieldDecoration?.suffixIconColor,
                    suffixIconConstraints:
                        textFieldDecoration?.suffixIconConstraints,
                    counter: textFieldDecoration?.counter,
                    counterText: textFieldDecoration?.counterText,
                    counterStyle: textFieldDecoration?.counterStyle,
                    filled: textFieldDecoration?.filled,
                    fillColor: textFieldDecoration?.fillColor,
                    focusColor: textFieldDecoration?.focusColor,
                    hoverColor: textFieldDecoration?.hoverColor,
                    helper: textFieldDecoration?.helper,
                    isCollapsed: textFieldDecoration?.isCollapsed,
                    isDense: textFieldDecoration?.isDense,
                    prefixIconConstraints:
                        textFieldDecoration?.prefixIconConstraints,
                    prefix: textFieldDecoration?.prefix,
                    prefixText: textFieldDecoration?.prefixText,
                    prefixStyle: textFieldDecoration?.prefixStyle,
                    suffixIcon: isPassword
                        ? IconButton(
                            icon: Icon(isObscuredValue
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () =>
                                isObscured.value = !isObscuredValue,
                          )
                        : textFieldDecoration?.suffixIcon,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
