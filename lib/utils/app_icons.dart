import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Line icons from the design (24×24, square caps). Drawn with flutter_svg so they match the mock-ups exactly.
abstract final class AppIcons {
  static const home = 'M3 10.5 12 3l9 7.5V21h-6v-6H9v6H3z';
  static const shield = 'M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z';
  static const shieldCheck = 'M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10zM9 12l2 2 4-4';
  static const calculator = 'M4 2h16v20H4zM8 6h8M8 11h2M14 11h2M8 15h2M14 15v3';
  static const user = 'M12 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM4 21a8 8 0 0 1 16 0';
  static const bell = 'M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9M13.7 21a2 2 0 0 1-3.4 0';
  static const building = 'M3 21h18M5 21V7l7-4 7 4v14M9 21v-6h6v6';
  static const wrench =
      'M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.8-3.8a6 6 0 0 1-7.9 7.9l-6.9 6.9a2.1 2.1 0 0 1-3-3l6.9-6.9a6 6 0 0 1 7.9-7.9z';
  static const install = 'M3 5h18v8H3zM7 17v3M12 17v4M17 17v3M7 9h10';
  static const tv = 'M2 7h20v12H2zM7 3l5 4 5-4';
  static const pin = 'M12 22s-7-6.2-7-12a7 7 0 0 1 14 0c0 5.8-7 12-7 12zM12 12.5a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z';
  static const clipboard = 'M9 4h6v3H9zM5 6h14v15H5zM9 12h6M9 16h4';
  static const grid = 'M3 3h8v8H3zM13 3h8v8h-8zM3 13h8v8H3zM13 17h8M17 13v8';
  static const phone =
      'M22 16.9v3a2 2 0 0 1-2.2 2 19.8 19.8 0 0 1-8.6-3.1 19.5 19.5 0 0 1-6-6A19.8 19.8 0 0 1 2.1 4.2 2 2 0 0 1 4.1 2h3a2 2 0 0 1 2 1.7c.1.9.4 1.8.7 2.7a2 2 0 0 1-.5 2.1L8 9.8a16 16 0 0 0 6 6l1.3-1.3a2 2 0 0 1 2.1-.4c.9.3 1.8.6 2.7.7a2 2 0 0 1 1.7 2z';
  static const whatsapp = 'M21 11.5a8.4 8.4 0 0 1-12.4 7.4L3 21l2.1-5.6A8.4 8.4 0 1 1 21 11.5z';
  static const doc = 'M14 2H5v20h14V7zM14 2v5h5M8 13h8M8 17h8';
  static const info = 'M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20zM12 16v-4M12 8h.01';
  static const box = 'M21 16V8l-9-5-9 5v8l9 5zM3.3 7 12 12l8.7-5M12 22V12';
  static const truck = 'M1 4h13v12H1zM14 8h4l4 4v4h-8M5.5 21a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5zM18.5 21a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z';
  static const check = 'M20 6 9 17l-5-5';
  static const calendar = 'M3 5h18v16H3zM3 10h18M8 3v4M16 3v4';
  static const camera = 'M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2zM12 17a4 4 0 1 0 0-8 4 4 0 0 0 0 8z';
  static const search = 'M11 19a8 8 0 1 0 0-16 8 8 0 0 0 0 16zM21 21l-4.3-4.3';
  static const map = 'M1 6v16l7-4 8 4 7-4V2l-7 4-8-4zM8 2v16M16 6v16';
  static const logout = 'M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4M16 17l5-5-5-5M21 12H9';
  static const close = 'M18 6 6 18M6 6l12 12';
  static const plus = 'M12 5v14M5 12h14';
  static const minus = 'M5 12h14';
  static const warning = 'M10.3 3.9 1.8 18a2 2 0 0 0 1.7 3h17a2 2 0 0 0 1.7-3L13.7 3.9a2 2 0 0 0-3.4 0zM12 9v4M12 17h.01';
  static const moon = 'M21 12.8A9 9 0 1 1 11.2 3a7 7 0 0 0 9.8 9.8z';
  static const globe = 'M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20zM2 12h20M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z';
  static const chevronEnd = 'M9 18l6-6-6-6';
  static const chevronStart = 'M15 18l-6-6 6-6';
  static const filter = 'M22 3H2l8 9.5V19l4 2v-8.5z';
  static const refresh = 'M23 4v6h-6M1 20v-6h6M3.5 9a9 9 0 0 1 14.9-3.4L23 10M1 14l4.6 4.4A9 9 0 0 0 20.5 15';
  static const replace = 'M23 4v6h-6M20.5 15a9 9 0 1 1-2.1-9.4L23 10';
  static const lock = 'M5 11h14v10H5zM8 11V7a4 4 0 0 1 8 0v4';
  static const pencil = 'M17 3l4 4L8 20H4v-4z';
  static const send = 'M22 2 11 13M22 2l-7 20-4-9-9-4z';
  static const message = 'M21 15H7l-4 4V3h18z';
  static const clock = 'M12 22a10 10 0 1 0 0-20 10 10 0 0 0 0 20zM12 6v6l4 2';
  static const doneAll = 'M2 12l5 5L18 6M12 17l1 1L23 8';
  static const arrowEnd = 'M5 12h14M13 5l7 7-7 7';
  static const chevronDown = 'M6 9l6 6 6-6';
  static const eye = 'M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8zM12 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6z';
  static const barcode = 'M4 7V4h3M20 7V4h-3M4 17v3h3M20 17v3h-3M8 8v8M12 8v8M16 8v8';
  static const headset = 'M3 18v-6a9 9 0 0 1 18 0v6M21 19a2 2 0 0 1-2 2h-1v-6h3zM3 19a2 2 0 0 0 2 2h1v-6H3z';
  static const radio = 'M4 4h16v16H4z';
  static const userCheck = 'M9 11a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM1 21a8 8 0 0 1 16 0M16 11l2 2 4-4';
}

class AppIcon extends StatelessWidget {
  const AppIcon(this.path, {super.key, this.size = 22, this.color, this.strokeWidth = 2, this.mirrorInRtl = false});

  final String path;
  final double size;
  final Color? color;
  final double strokeWidth;

  /// For directional icons (chevrons) that should flip in Arabic.
  final bool mirrorInRtl;

  @override
  Widget build(BuildContext context) {
    final c = color ?? IconTheme.of(context).color ?? Theme.of(context).colorScheme.onSurface;
    final hex = '#${(c.toARGB32() & 0xFFFFFF).toRadixString(16).padLeft(6, '0')}';
    final opacity = (c.a).toStringAsFixed(2);
    final svg = '<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none" stroke="$hex" '
        'stroke-opacity="$opacity" stroke-width="$strokeWidth" stroke-linecap="square" stroke-linejoin="miter">'
        '<path d="$path"/></svg>';
    Widget icon = SvgPicture.string(svg, width: size, height: size);
    if (mirrorInRtl && Directionality.of(context) == TextDirection.rtl) {
      icon = Transform.flip(flipX: true, child: icon);
    }
    return ExcludeSemantics(child: icon);
  }
}
