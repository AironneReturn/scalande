import 'package:scalande_project/presentation/core/widgets/x_button_font_style.dart';
import 'package:flutter/material.dart';

import '../extensions/color_extensions.dart';
import 'styles.dart';

class XThemeData {
  /// REVIEW Light theme.
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      accentColorBrightness: Brightness.light,
      primaryColorBrightness: Brightness.light,
      //NOTE The default color of the Material that underlies the Scaffold.
      backgroundColor: Colors.grey[300],
      //NOTE The default color of MaterialType.canvas Material. like dropdown menu
      canvasColor: Colors.white.darker(0.05),
      //NOTE The color of cursors in Material-style text fields
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kBlue.darker(0.1),
        selectionColor: kBlue.darker(0.1),
        selectionHandleColor: kBlue.darker(0.1),
      ),
      //NOTE The color used for widgets that are inoperative, regardless of their state.
      // disabledColor: ,
      //NOTE The color of Dividers and PopupMenuDividers, also used between ListTiles
      // dividerColor: ,
      //NOTE The color to use for input validation errors, e.g. in TextField fields
      // errorColor: ,
      //NOTE The focus color used indicate that a component has the input focus.
      focusColor: Colors.white.darker(0.6),
      //NOTE The highlight color used during ink splash animations or to indicate an item in a menu is selected.
      highlightColor: Colors.transparent,
      //NOTE The color to use for hint text or placeholder text, e.g. in TextField fields
      // hintColor: ,
      //NOTE The hover color used to indicate when a pointer is hovering over a component
      // hoverColor: ,
      //NOTE The color of the selected tab indicator in a tab bar
      indicatorColor: Colors.white,
      //NOTE The default color of the Material that underlies the Scaffold
      scaffoldBackgroundColor: Colors.white.darker(0.2),
      //NOTE The color of the header of a PaginatedDataTable when there are selected rows
      // secondaryHeaderColor: ,
      //NOTE The color used to highlight selected rows.
      // selectedRowColor: ,
      //NOTE The color that the Material widget uses to draw elevation shadows
      // shadowColor: Colors.transparent,
      //NOTE The color of ink splashes
      splashColor: Colors.white24,
      //NOTE The color used to highlight the active states of toggleable widgets like Switch, Radio, and Checkbox
      toggleableActiveColor: kBlue.darker(0.1),
      //NOTE The color used for widgets in their inactive (but enabled) state
      unselectedWidgetColor: Colors.white.darker(0.45),
      //NOTE The default fill color of the Material used in RaisedButtons
      // buttonColor: ,

      textTheme: TextTheme(
        bodyText1: kTextStyle,
        bodyText2: kTextStyle,
        headline1: kTitleStyle,
        headline2: kTitleTwoStyle,
        headline3: kTitleThreeStyle,
        headline4: kTitleThreeStyle.copyWith(fontSize: 12),
        subtitle1: kTextStyleSub,
        button: kTextStyle,
      ),
      //NOTE The background color of Dialog elements.
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white.darker(0.3),
        contentTextStyle: kTextStyle,
      ),
      cardTheme: CardTheme(
        color: Colors.white.darker(0.1),
        elevation: 4,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white.darker(0.6)),
          textStyle: XButtonFontStyle(),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: kTextStyle.copyWith(fontSize: 15, color: Colors.black),
        fillColor: Colors.white.darker(0.05),
        focusColor: Colors.white.darker(0.05),
        hoverColor: Colors.white.darker(0.05),
        counterStyle: kTextStyle,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white.darker(0.05), width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white.darker(0.05), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: kBlue.darker(0.05), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.white.darker(0.05), width: 1),
        ),
        prefixStyle: kTextStyle.copyWith(color: Colors.white),
        suffixStyle: kTextStyle.copyWith(color: Colors.white),
        hintStyle: kTextStyle,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor:
              MaterialStateProperty.all<Color>(Colors.white.darker(0.6)),
          overlayColor: MaterialStateProperty.all<Color>(Colors.white10),
          // minimumSize: XButtonSize(minimumSize: Size()),
          // padding: XButtonPadding(),
          textStyle: XButtonFontStyle(),
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 22,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.white.darker(0.05),
        selectedIconTheme: IconThemeData(color: kBlue.darker(0.05)),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        labelType: NavigationRailLabelType.none,
        selectedLabelTextStyle: kTextStyle,
        unselectedLabelTextStyle: kTextStyle,
        elevation: 4,
        groupAlignment: 0,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: kBlue,
        elevation: 4,
        // shape:AutomaticNotchedShape() ,
      ),
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: Colors.white.darker(0.2),
        contentTextStyle: kTextStyle,
        // leadingPadding: ,
        // padding: ,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white.darker(0.2),
        elevation: 4,
        selectedIconTheme: IconThemeData(color: kBlue.darker(0.1), size: 22),
        selectedItemColor: kBlue.darker(0.1),
        unselectedIconTheme: IconThemeData(color: Colors.blue, size: 22),
        unselectedItemColor: Colors.blue,
        selectedLabelStyle: kTextStyle,
        unselectedLabelStyle: kTextStyle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white.darker(0.3),
        splashColor: Colors.white24,
        textTheme: ButtonTextTheme.normal,
        // shape: ,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white.darker(0.2),
        elevation: 4,
        splashColor: Colors.white24,
        foregroundColor: kBlue.darker(0.1),
      ),
      chipTheme: ChipThemeData(
        selectedColor: kBlue.darker(0.1),
        disabledColor: Colors.white.darker(0.3),
        brightness: Brightness.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(4),
        secondarySelectedColor: Colors.white.darker(0.6),
        secondaryLabelStyle: kTextStyle,
        labelStyle: kTextStyle,
        elevation: 4,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white.darker(0.6),
        elevation: 4,
        modalBackgroundColor: Colors.white.darker(0.3),
        modalElevation: 4,
        // shape: ,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: kBlue.darker(0.1),
        activeTickMarkColor: Colors.white.darker(0.1),
        inactiveTrackColor: Colors.white.darker(0.3),
        inactiveTickMarkColor: Colors.white.darker(0.6),
        overlayColor: kBlue.darker(0.1).withOpacity(0.2),
        thumbColor: kBlue.darker(0.1),
        trackHeight: 10,
        valueIndicatorTextStyle: kTextSmallStyle,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: kTextStyle.color,
        backgroundColor: Colors.white.darker(0.2),
        contentTextStyle: kTextStyle,
        elevation: 4,
        // shape: ,
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          color: Colors.white.darker(0.2),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: kTextStyle.color,
        labelStyle: kTextStyle,
        unselectedLabelColor: kTextStyle.color,
        unselectedLabelStyle: kTextStyle,
      ),
      dataTableTheme: DataTableThemeData(
        headingRowHeight: 20,
        headingRowColor: MaterialStateProperty.all(Colors.white.darker(0.6)),
        headingTextStyle: kTitleStyle,
        dataRowColor: MaterialStateProperty.all(Colors.white.darker(0.3)),
        dataTextStyle: kTextStyle,
        columnSpacing: 20,
        dataRowHeight: 50,
        dividerThickness: 3,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.white.darker(0.2),
        dayPeriodColor: Colors.white.darker(0.6),
        dayPeriodTextColor: kTextStyle.color,
        dayPeriodTextStyle: kTitleStyle,
        dialBackgroundColor: Colors.white.darker(0.3),
        helpTextStyle: kTextStyle,
        dialTextColor: kTextStyle.color,
        entryModeIconColor: Colors.white,
        hourMinuteColor: Colors.white.darker(0.6),
        hourMinuteTextStyle: kTextStyle,
        hourMinuteTextColor: kTextStyle.color,
      ),
      dividerTheme: DividerThemeData(
        color: Colors.white.darker(0.2),
        endIndent: 5,
        indent: 5,
        space: 5,
        thickness: 5,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: Colors.white.darker(0.3),
        elevation: 4,
        // shape: ,
        textStyle: kTextStyle,
      ),
      tooltipTheme: TooltipThemeData(
        // height: 30,
        decoration: BoxDecoration(
          color: Colors.white.darker(0.6),
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: kTextStyle,
        showDuration: Duration(seconds: 2),
      ),
      // NOTE - DatePicker
      colorScheme: ColorScheme.light(
        primary: Colors.white,
        secondary: Colors.black,
        onPrimary: Colors.white.darker(0.2),
        surface: Colors.white.darker(0.6),
        onSurface: Colors.white.darker(0.6),
      ),
      // NOTE - DatePicker
      dialogBackgroundColor: Colors.white.darker(0.2),
    );
  }

  /// REVIEW Dark theme.
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColorBrightness: Brightness.dark,
      //NOTE The background color for major parts of the app (toolbars, tab bars, etc)
      primaryColor: Colors.grey[600],
      //NOTE color for widget (knobs, text, overscroll edge effect, etc)
      accentColor: kBlue,
      //NOTE The default color of the Material that underlies the Scaffold.
      backgroundColor: kBackgroundColor,
      //NOTE The default color of MaterialType.canvas Material. like dropdown menu
      canvasColor: kTextFieldBackground,
      //NOTE The color of cursors in Material-style text fields
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kBlue,
        selectionColor: kBlue,
        selectionHandleColor: kBlue,
      ),
      //NOTE The color used for widgets that are inoperative, regardless of their state.
      // disabledColor: ,
      //NOTE The color of Dividers and PopupMenuDividers, also used between ListTiles
      // dividerColor: ,
      //NOTE The color to use for input validation errors, e.g. in TextField fields
      // errorColor: ,
      //NOTE The focus color used indicate that a component has the input focus.
      focusColor: kBackgroundLogoRightColor,
      //NOTE The highlight color used during ink splash animations or to indicate an item in a menu is selected.
      highlightColor: Colors.transparent,
      //NOTE The color to use for hint text or placeholder text, e.g. in TextField fields
      // hintColor: ,
      //NOTE The hover color used to indicate when a pointer is hovering over a component
      // hoverColor: ,
      //NOTE The color of the selected tab indicator in a tab bar
      indicatorColor: Colors.white,
      //NOTE The default color of the Material that underlies the Scaffold
      scaffoldBackgroundColor: kBackgroundColor,
      //NOTE The color of the header of a PaginatedDataTable when there are selected rows
      // secondaryHeaderColor: ,
      //NOTE The color used to highlight selected rows.
      // selectedRowColor: ,
      //NOTE The color that the Material widget uses to draw elevation shadows
      // shadowColor: Colors.transparent,
      //NOTE The color of ink splashes
      splashColor: Colors.white24,
      //NOTE The color used to highlight the active states of toggleable widgets like Switch, Radio, and Checkbox
      toggleableActiveColor: kBlue,
      //NOTE The color used for widgets in their inactive (but enabled) state
      unselectedWidgetColor: kDarkGrey,
      //NOTE The default fill color of the Material used in RaisedButtons
      // buttonColor: ,

      textTheme: TextTheme(
        bodyText1: kTextStyle,
        bodyText2: kTextStyle,
        headline1: kTitleStyle,
        headline2: kTitleTwoStyle,
        headline3: kTitleThreeStyle,
        headline4: kTitleThreeStyle.copyWith(fontSize: 12),
        subtitle1: kTextStyleSub,
        button: kTextStyle,
      ),
      //NOTE The background color of Dialog elements.
      dialogTheme: DialogTheme(
        backgroundColor: kBackgroundLogoLeftColor,
        contentTextStyle: kTextStyle,
      ),
      cardTheme: CardTheme(
        color: kBackgroundColor,
        elevation: 4,
      ),
      appBarTheme: AppBarTheme(
        textTheme:
            TextTheme(headline6: TextStyle(color: Colors.black, fontSize: 20)),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        color: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(kPrimarySwatchDark),
          textStyle: XButtonFontStyle(),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: kTextStyle.copyWith(fontSize: 15, color: Colors.white),
        fillColor: kTextFieldBackground,
        focusColor: kTextFieldBackground,
        hoverColor: kTextFieldBackground,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: kBackgroundColor, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: kBackgroundColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: kBlue, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: kBackgroundColor, width: 1),
        ),
        prefixStyle: kTextStyle.copyWith(color: Colors.white.withOpacity(0.5)),
        suffixStyle: kTextStyle.copyWith(color: Colors.white.withOpacity(0.5)),
        hintStyle: kTextStyle,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.all<Color>(Colors.white10),
          // minimumSize: XButtonSize(minimumSize: Size()),
          // padding: XButtonPadding(),
          textStyle: XButtonFontStyle(),
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 22,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: kBlue),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        labelType: NavigationRailLabelType.none,
        selectedLabelTextStyle:
            kTextStyle.copyWith(color: kBlue, fontWeight: FontWeight.bold),
        unselectedLabelTextStyle: kTextStyle,
        elevation: 4,
        groupAlignment: 0,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.black,
        elevation: 4,
        // shape:AutomaticNotchedShape() ,
      ),
      bannerTheme: MaterialBannerThemeData(
        backgroundColor: kBackgroundColor,
        contentTextStyle: kTextStyle,
        // leadingPadding: ,
        // padding: ,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 4,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 22),
        selectedItemColor: Colors.black,
        unselectedIconTheme:
            IconThemeData(color: Colors.black.withOpacity(0.5), size: 22),
        unselectedItemColor: Colors.black.withOpacity(0.5),
        selectedLabelStyle: kTextStyle,
        unselectedLabelStyle: kTextStyle,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: kBackgroundLogoLeftColor,
        splashColor: Colors.white24,
        textTheme: ButtonTextTheme.normal,
        // shape: ,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kBlue,
        elevation: 4,
        splashColor: Colors.white24,
        foregroundColor: Colors.white,
      ),
      chipTheme: ChipThemeData(
        selectedColor: kBlue,
        disabledColor: kBackgroundLogoLeftColor,
        brightness: Brightness.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(4),
        secondarySelectedColor: kBackgroundLogoRightColor,
        secondaryLabelStyle: kTextStyle,
        labelStyle: kTextStyle,
        elevation: 4,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: kBackgroundLogoRightColor,
        elevation: 4,
        modalBackgroundColor: kBackgroundLogoLeftColor,
        modalElevation: 4,
        // shape: ,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: kBlue,
        activeTickMarkColor: kTextFieldBackground,
        inactiveTrackColor: kBackgroundLogoLeftColor,
        inactiveTickMarkColor: kBackgroundLogoRightColor,
        overlayColor: kBlue.withOpacity(0.2),
        thumbColor: kBlue,
        trackHeight: 10,
        valueIndicatorTextStyle: kTextSmallStyle,
      ),
      snackBarTheme: SnackBarThemeData(
        actionTextColor: kTextStyle.color,
        backgroundColor: kBackgroundColor,
        contentTextStyle: kTextStyle,
        elevation: 4,
        // shape: ,
      ),
      tabBarTheme: TabBarTheme(
        labelPadding: EdgeInsets.all(8),
        indicator: BoxDecoration(
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 6,
              spreadRadius: 3,
              offset: Offset(0, 5),
            ),
          ],
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: kTextStyle.color,
        labelStyle: kTextStyle,
        unselectedLabelColor: kTextStyle.color,
        unselectedLabelStyle: kTextStyle,
      ),
      dataTableTheme: DataTableThemeData(
        headingRowHeight: 20,
        headingRowColor: MaterialStateProperty.all(kBackgroundLogoRightColor),
        headingTextStyle: kTitleStyle,
        dataRowColor: MaterialStateProperty.all(kBackgroundLogoLeftColor),
        dataTextStyle: kTextStyle,
        columnSpacing: 20,
        dataRowHeight: 50,
        dividerThickness: 3,
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: kBackgroundColor,
        dayPeriodColor: kBackgroundLogoRightColor,
        dayPeriodTextColor: kTextStyle.color,
        dayPeriodTextStyle: kTitleStyle,
        dialBackgroundColor: kBackgroundLogoLeftColor,
        helpTextStyle: kTextStyle,
        dialTextColor: kTextStyle.color,
        entryModeIconColor: Colors.white,
        hourMinuteColor: kBackgroundLogoRightColor,
        hourMinuteTextStyle: kTextStyle,
        hourMinuteTextColor: kTextStyle.color,
      ),
      dividerTheme: DividerThemeData(
        color: kBackgroundColor,
        endIndent: 5,
        indent: 5,
        space: 5,
        thickness: 5,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: kBackgroundLogoLeftColor,
        elevation: 4,
        // shape: ,
        textStyle: kTextStyle,
      ),
      tooltipTheme: TooltipThemeData(
        // height: 30,
        decoration: BoxDecoration(
          color: kBackgroundLogoRightColor,
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: kTextStyle,
        showDuration: Duration(seconds: 2),
      ),
      // NOTE - DatePicker
      colorScheme: ColorScheme.dark(
        primary: kBlue,
        onPrimary: kBackgroundColor,
        surface: kBackgroundLogoRightColor,
        onSurface: Colors.white,
      ),
      // NOTE - DatePicker
      dialogBackgroundColor: kBackgroundColor,
    );
  }
}
