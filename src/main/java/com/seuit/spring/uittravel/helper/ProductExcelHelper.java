package com.seuit.spring.uittravel.helper;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import com.seuit.spring.uittravel.entity.TourFull;

public class ProductExcelHelper {

	public List<TourFull> saveProductsFromExcelFile(File excelFilePath) throws IOException {
		List<TourFull> listTourFull = new ArrayList<TourFull>();
		FileInputStream inputStream = new FileInputStream(excelFilePath);
		Workbook workBook = getWorkbook(inputStream, excelFilePath.getPath());
		Sheet firstSheet = workBook.getSheetAt(0);
		Iterator<Row> rows = firstSheet.iterator();

		while (rows.hasNext()) {
			Row row = rows.next();
			Iterator<Cell> cells = row.cellIterator();
			TourFull TourFull = new TourFull();
			if (row.getRowNum() < 2 || row.getCell(0).getStringCellValue()=="") {
				continue;
			}else {
				while (cells.hasNext()) {
					Cell cell = cells.next();
					int columnIndex = cell.getColumnIndex();

					switch (columnIndex) {
					case 0:
						TourFull.setName((String) getCellValue(cell));
						break;
					case 1:
						TourFull.setImage((String) getCellValue(cell));
						break;
					case 2:
						TourFull.setTitle((String) getCellValue(cell));
						break;
					case 3:
						TourFull.setDetail((String) getCellValue(cell));
						break;
					case 4:
						TourFull.setPrice((Double) getCellValue(cell));
						break;
					case 5:
						TourFull.setProvince(((Number) getCellValue(cell)).intValue());
						break;
					case 6:
					case 7:
					case 8:
					case 9:
					case 10:
						if (!cell.getStringCellValue().equals("")) {
							TourFull.getImages().add(new String((String) getCellValue(cell)));
						}
						break;
					}
				}
				listTourFull.add(TourFull);
			}
	}

	workBook.close();inputStream.close();

	return listTourFull;

	}

	@SuppressWarnings("deprecation")
	private Object getCellValue(Cell cell) {
		switch (cell.getCellType()) {
		case Cell.CELL_TYPE_STRING:
			return cell.getStringCellValue();

		case Cell.CELL_TYPE_BOOLEAN:
			return cell.getBooleanCellValue();

		case Cell.CELL_TYPE_NUMERIC:
			return cell.getNumericCellValue();
		}

		return null;
	}

	private Workbook getWorkbook(FileInputStream inputStream, String excelFilePath) throws IOException {
		Workbook workbook = null;

		if (excelFilePath.endsWith("xlsx")) {
			workbook = new XSSFWorkbook(inputStream);
		} else if (excelFilePath.endsWith("xls")) {
			workbook = new HSSFWorkbook(inputStream);
		} else {
			throw new IllegalArgumentException("The specified file is not Excel file");
		}

		return workbook;
	}
}
