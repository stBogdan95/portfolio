import 'package:flutter/material.dart';
import 'package:my_portfolio/types/template_type.dart';

class AdaptiveDesign extends StatefulWidget {
  final Widget desktope, tablet, mobile;
  const AdaptiveDesign({
    super.key,
    required this.desktope,
    required this.tablet,
    required this.mobile,
  });

  @override
  State<AdaptiveDesign> createState() => _AdaptiveDesignState();
}

class _AdaptiveDesignState extends State<AdaptiveDesign> {
  late TemplateType _templateType;

  TemplateType get _getTemplateType {
    final double width = MediaQuery.of(context).size.width;
    return width <= 768
        ? TemplateType.mobile
        : width <= 1024
            ? TemplateType.tablet
            : TemplateType.desktope;
  }

  @override
  Widget build(BuildContext context) {
    _templateType = _getTemplateType;
    return _templateType == TemplateType.mobile
        ? widget.mobile
        : _templateType == TemplateType.tablet
            ? widget.tablet
            : widget.desktope;
  }
}
