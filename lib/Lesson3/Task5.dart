import 'package:equatable/equatable.dart';

class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  String toString() {
    return 'Rectangle(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rectangle &&
          runtimeType == other.runtimeType &&
          width == other.width &&
          height == other.height;

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

class Rectangle2 extends Equatable {
  final double width;
  final double height;

  Rectangle2(this.width, this.height);

  @override
  List<Object?> get props => [width, height];

  @override
  String toString() {
    return 'Rectangle2(width: $width, height: $height)';
  }
}

void main() {
  Rectangle rect1 = Rectangle(7.0, 11.0);
  Rectangle rect2 = Rectangle(7.0, 11.0);
  Rectangle rect3 = Rectangle(4.0, 8.0);

  print(rect1);
  print(rect1 == rect2);
  print(rect1 == rect3);

  Rectangle2 rect4 = Rectangle2(10.0, 10.0);
  Rectangle2 rect5 = Rectangle2(10.0, 10.0);
  Rectangle2 rect6 = Rectangle2(2.0, 6.0);

  print(rect4);
  print(rect4 == rect5);
  print(rect4 == rect6);
}
