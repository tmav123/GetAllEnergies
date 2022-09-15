import numpy as np
import pandas as pd
import os, csv
import xlsxwriter


float_formatter = "{:.6f}".format                                               #Formating outputs
np.set_printoptions(suppress=True, formatter={'float_kind':float_formatter})
pd.set_option('display.float_format', lambda x: '%.6f' % x)

ROW = 0
#COL = 0


file_names = []
diff_basis = []

name_of_csv = input("Enter name of csv file, do not include the extension: ")

userin = r"C:\Users\malla1\PycharmProjects\GetAllThermals\R_E"

if userin == "no":
    path = os.path.realpath(os.path.join(os.path.dirname(__file__)))
else:
    path = userin

workbook = xlsxwriter.Workbook(name_of_csv+'.xlsx')
worksheet = workbook.add_worksheet()

for filename in os.listdir(path):
    if filename.endswith("m06l.log"):
        diff_basis.append(filename)

    elif filename.endswith(".log"):
        file_names.append(filename)

total_files = (len(diff_basis)+len(file_names))
total_rows_needed = 6*total_files


def main():

    data = []
    files_already_written = 0
    mo_files_written = 0

    create_labels()
    for name in file_names:
        data.append(find_energy(name, files_already_written))                                                           #order is Name, ZP Corr, Thermal Corr, Gibbs Corr
        files_already_written += 1

    data = delete_blanks(data)

    for name in diff_basis:
        hartre_fock_finder(name, mo_files_written)
        add_corrections(name, data, mo_files_written)
        mo_files_written += 1

    workbook.close()


def find_energy(name, file_number):

    to_return = []          #order is Name, ZP Corr, Thermal Corr, Gibbs Corr
    corrected_electronic = 0
    electronic = 0
    row_to_write = file_number * 6
    col = 0
    numbers = []
    line_number = 0
    itr = 0

    x=os.path.join(path, name)
    file = open(x, "r")                                                         #opening the files then spliting the file into lines
    z = file.read()
    content = z.split("\n")
                                                                                # HF is the Eletronic energy 13
    worksheet.write(row_to_write, col, name)
    to_return.append(name)

    for line in content:
        #print(itr)
        if "Zero-point correction=" in line:

            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                #if i == "-":
                    #numbers.append(i)

                else:
                    continue

            row_to_write = (file_number * 6) + 2
            number_to_write = remove_to_float(numbers)
            electronic = number_to_write
            to_return.append(electronic)

            worksheet.write(row_to_write, col + 1, number_to_write)
            numbers = []
            #line_number += 1

        elif "Thermal correction to Enthalpy=" in line:
            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                if i == "-":
                    numbers.append(i)

                else:
                    continue

            row_to_write = (file_number * 6) +4
            number_to_write = remove_to_float(numbers)
            to_return.append(number_to_write)

            worksheet.write(row_to_write, col + 1, number_to_write)
            numbers = []
            #line_number += 1

        elif "Thermal correction to Gibbs Free Energy=" in line:

            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                if i == "-":
                    numbers.append(i)

                else:
                    continue

            row_to_write = (file_number * 6) + 1
            number_to_write = remove_to_float(numbers)
            to_return.append(number_to_write)

            worksheet.write(row_to_write, col + 1, number_to_write)

            numbers = []
            #line_number += 1

        elif "Sum of electronic and zero-point Energies=" in line:

            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                if i == "-":
                    numbers.append(i)

                else:
                    continue

            row_to_write = (file_number * 6) + 3
            number_to_write = remove_to_float(numbers)

            corrected_electronic = number_to_write

            worksheet.write(row_to_write, col + 3, number_to_write)
            worksheet.write(row_to_write, col + 4, number_to_write * 627.5)

            numbers = []
            #line_number += 1

        elif "Sum of electronic and thermal Enthalpies=" in line:

            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                if i == "-":
                    numbers.append(i)

                else:
                    continue

            row_to_write = (file_number * 6) + 4
            number_to_write = remove_to_float(numbers)

            worksheet.write(row_to_write, col + 3, number_to_write)
            worksheet.write(row_to_write, col + 4, number_to_write * 627.5)

            numbers = []
            #line_number += 1

        elif "Sum of electronic and thermal Free Energies=" in line:

            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                if i == "-":
                    numbers.append(i)

                else:
                    continue

            row_to_write = (file_number * 6) + 1
            number_to_write = remove_to_float(numbers)

            worksheet.write(row_to_write, col + 3, number_to_write)
            worksheet.write(row_to_write, col + 4, number_to_write * 627.5)
            #line_number += 1

        line_number += 1

    hf = (corrected_electronic - electronic)
    row_to_write = (file_number * 6) + 2
    worksheet.write(row_to_write, 3, hf)
    worksheet.write(row_to_write, 4, hf * 627.5)

    file.close()
    return to_return


def hartre_fock_finder(name, file_number):

    col = 6
    numbers = []
    itr = 0

    row_to_write = (file_number * 6) + 2

    x = os.path.join(path, name)
    file = open(x, "r")                                                             #  opening the files then spliting the file into lines
    z = file.read()
    content = z.split("\n")
                                                                                    # HF is the Eletronic energy 13
    worksheet.write(file_number * 6, col, name)

    location = z.find("HF=", 1500)

    while z[location + itr + 3] != "\\":
        numbers.append(z[location + 3 + itr])
        itr += 1

    number_to_write = remove_to_float(numbers)
    kj = number_to_write * 627.5

    worksheet.write(row_to_write, col + 3, number_to_write)
    worksheet.write(row_to_write, col + 4, kj)


def create_labels():
    begin_row = 0
    zero_col = 0
    file_number = 1

    while file_number <= len(file_names):
        #worksheet.write(begin_row, zero_col, file_number)
        worksheet.write(begin_row, zero_col + 3, "Au")
        worksheet.write(begin_row, zero_col + 4, "Kcal")
        worksheet.write(begin_row, zero_col + 5, "Diff")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 0, "Gibbs Corr")
        worksheet.write(begin_row, zero_col + 2, "Gibbs")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 0, "ZP Corr")
        worksheet.write(begin_row, zero_col + 2, "Electronic")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 2, "Corrected Electronic")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 0, "Thermal Corr")
        worksheet.write(begin_row, zero_col + 2, "Enthalpy")
        file_number += 1
        begin_row = begin_row + 2

    begin_row = 0
    zero_col = 6
    file_number = 1

    while file_number <= len(diff_basis):
        # worksheet.write(begin_row, zero_col, file_number)
        worksheet.write(begin_row, zero_col + 3, "Au")
        worksheet.write(begin_row, zero_col + 4, "Kcal")
        worksheet.write(begin_row, zero_col + 5, "Diff")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 0, "Gibbs Corr")
        worksheet.write(begin_row, zero_col + 2, "Gibbs")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 0, "ZP Corr")
        worksheet.write(begin_row, zero_col + 2, "Electronic")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 2, "Corrected Electronic")
        begin_row += 1
        worksheet.write(begin_row, zero_col + 0, "Thermal Corr")
        worksheet.write(begin_row, zero_col + 2, "Enthalpy")
        file_number += 1
        begin_row = begin_row + 2


def remove_to_float(string):

    for i in string:
        if i == "\\":
            string.remove("\\")
        if i == "\n":
            string.remove("\n")

    for j in range(len(string) - 1):
        if string[j] == " ":
            string.pop(j)
        if string[j] == "-" and string[j+1] == "-":
            string.pop(j)

    blank = "".join(string)
    blank = float(blank)

    return blank


def delete_blanks(list_to_clear):
    for i in list_to_clear:
        if len(i) < 2:
            i.pop()

    return list_to_clear


def add_corrections(name_of_file, data, rows_written):
    col = 6

    print("hello world")


if __name__ == "__main__":
    main()
