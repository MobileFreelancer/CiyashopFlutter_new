import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBodySmall extends StatelessWidget {
  const TextBodySmall({
    super.key,
    required this.text,
    this.color = ColorConstant.textBody,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.workSans,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.bodySmall?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextBodyMedium extends StatelessWidget {
  const TextBodyMedium({
    super.key,
    required this.text,
    this.color = ColorConstant.textBody,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.workSans,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.bodyMedium?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextBodyLarge extends StatelessWidget {
  const TextBodyLarge({
    super.key,
    required this.text,
    this.color = ColorConstant.textBody,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.workSans,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.bodyLarge?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextHeadlineLarge extends StatelessWidget {
  const TextHeadlineLarge({
    super.key,
    required this.text,
    this.color = ColorConstant.textTitle,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.yantramanav,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.headlineLarge?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextHeadlineMedium extends StatelessWidget {
  const TextHeadlineMedium({
    super.key,
    required this.text,
    this.color = ColorConstant.textTitle,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.yantramanav,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.headlineLarge?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextHeadlineSmall extends StatelessWidget {
  const TextHeadlineSmall({
    super.key,
    required this.text,
    this.color = ColorConstant.textTitle,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.yantramanav,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.headlineSmall?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextTitleSmall extends StatelessWidget {
  const TextTitleSmall({
    super.key,
    required this.text,
    this.color = ColorConstant.textTitle,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.yantramanav,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.titleSmall?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
              overflow: TextOverflow.ellipsis
            ),
      ),
    );
  }
}

class TextTitleMedium extends StatelessWidget {
  const TextTitleMedium({
    super.key,
    required this.text,
    this.color = ColorConstant.textTitle,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.yantramanav,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.titleMedium?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextTitleLarge extends StatelessWidget {
  const TextTitleLarge({
    super.key,
    required this.text,
    this.color = ColorConstant.textTitle,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.yantramanav,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.titleLarge?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextLabelSmall extends StatelessWidget {
  const TextLabelSmall({
    super.key,
    required this.text,
    this.color = ColorConstant.textWhite,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.workSans,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.labelSmall?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextLabelMedium extends StatelessWidget {
  const TextLabelMedium({
    super.key,
    required this.text,
    this.color = ColorConstant.textWhite,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.workSans,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.labelMedium?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class TextLabelLarge extends StatelessWidget {
  const TextLabelLarge({
    super.key,
    required this.text,
    this.color = ColorConstant.textWhite,
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.weight = 0,
    this.fontFamily = FontsConstants.workSans,
    this.maxLine = 1,
  });

  final int maxLine;
  final String text;
  final Color color;
  final double size;
  final TextAlign textAlign;
  final int weight;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.getFont(
        fontFamily,
        textStyle: Theme.of(context).textTheme.labelLarge?.apply(
              color: color,
              fontSizeDelta: size,
              fontWeightDelta: weight,
            ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
  });

  final String text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: TextHeadlineLargeWithShadow(
        text: text,
        size: 5,
      ),
    );
  }
}

class TextHeadlineLargeWithShadow extends StatelessWidget {
  const TextHeadlineLargeWithShadow({
    super.key,
    required this.text,
    this.color = const Color.fromRGBO(241, 241, 241, 1.0),
    this.size = 0,
    this.textAlign = TextAlign.start,
    this.maxLine = 1,
  });

  final String text;
  final Color color;
  final double size;
  final int maxLine;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headlineLarge?.apply(color: color, fontSizeDelta: size, shadows: [
        const Shadow(
          color: Color.fromRGBO(246, 237, 89, 0.4),
          blurRadius: 20,
          offset: Offset(0, 0),
        )
      ]),
    );
  }
}
