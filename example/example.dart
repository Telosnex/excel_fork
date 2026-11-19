import 'package:excel/telosnex_excel.dart';

void main() {
  final workbook = Excel.createExcel();
  final sheet = workbook['Sheet1'];
  sheet.cell(CellIndex.indexByString('A1')).value = TextCellValue('Hello');
  final bytes = workbook.encode()!;
  final copy = Excel.decodeBytes(bytes);
  print(copy['Sheet1'].cell(CellIndex.indexByString('A1')).value);
}
