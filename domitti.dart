import 'dart:io';

void main() {
  print('Enter number of rows and columns for 2D Matrix:');
  int rows = int.parse(stdin.readLineSync()!);
  int cols = int.parse(stdin.readLineSync()!);
  matrix2D(rows, cols);

  print('Enter height Triangle:');
  int height = int.parse(stdin.readLineSync()!);
  triangle(height);

  print('Enter height & width of Christmas Tree:');
  int treeHeight = int.parse(stdin.readLineSync()!);
  int treeWidth = int.parse(stdin.readLineSync()!);
  print('Enter symbol for Christmas Tree:');
  String symbol = stdin.readLineSync()!;
  christmasTree(treeHeight, treeWidth, symbol);
}

void matrix2D(int rows, int cols) {
  List<List<int>> matrix1 = [];
  List<List<int>> matrix2 = [];

  print('Enter values for Matrix #1:');
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < cols; j++) {
      int value = int.parse(stdin.readLineSync()!);
      row.add(value);
    }
    matrix1.add(row);
  }
  print('Enter values for Matrix #2:');
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < cols; j++) {
      int value = int.parse(stdin.readLineSync()!);
      row.add(value);
    }
    matrix2.add(row);
  }

  print('First matrix:');
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      stdout.write('${matrix1[i][j]} ');
    }
    print('');
  }
  print('Second matrix:');
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      stdout.write('${matrix2[i][j]} ');
    }
    print('');
  }

  print('Sum of matrices:');
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      int sum = matrix1[i][j] + matrix2[i][j];
      stdout.write('$sum ');
    }
    print('');
  }
}

void triangle(int height) {
  int n = 1;
  int space = height * 2;

  for (int i = 0; i < height; i++) {
    for (int j = 0; j < space; j++) {
      stdout.write('  ');
    }
    for (int k = 0; k < n; k++) {
      stdout.write('+ ');
    }
    print('');
    n += 2;
    space--;
  }
}

void christmasTree(int height, int width, String symbol) {
  int n = 1;
  int space = height * width;

  for (int i = 1; i <= height; i++) {
    for (int j = n; j <= width; j++) {
      // stdout.write('$n $width');

      for (int k = space; k >= j; k--) {
        stdout.write(' ');
      }
      for (int k = 0; k < j; k++) {
        stdout.write('$symbol ');
      }
      print('');
    }
    n += 2;
    width += 2;
  }

  for (int j = 1; j <= height - 1; j++) {
    for (int k = space - height; k >= 0; k--) {
      stdout.write(' ');
    }
    for (int k = 1; k <= height; k++) {
      stdout.write('$symbol ');
    }

    print('');
  }
}
