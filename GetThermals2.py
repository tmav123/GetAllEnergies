import numpy as np
import pandas as pd
import os, csv


float_formatter = "{:.6f}".format                                               #Formating outputs
np.set_printoptions(suppress=True, formatter={'float_kind':float_formatter})
pd.set_option('display.float_format', lambda x: '%.6f' % x)


file_names = []

name_of_csv = input("Enter name of csv file, do not include the extension: ")

userin = input("\nSpecify path or type 'no' to just use current dir: ")           

if userin == "no":
    path = os.path.realpath(os.path.join(os.path.dirname(__file__)))
else:
    path = userin


#path = os.getcwd()
#path = r'C:\Users\Trevor\EssLab\R_Z'


for filename in os.listdir(path):
    if filename.endswith(".log"):
        file_names.append(filename)


#file_names = input('Enter File Names: ').split()                               #un-comment this line if you only want to run the program with a few .log files, be sure to comment out lines 17-19
n = len(file_names)
energies = np.empty((n), dtype='U40, f8, f8')                                   #Creating Energies array that will contain all the energies


def main():

    ROW = 0
    global energies

    for name in file_names:
        find_energy(name,ROW)

        if check_for_blanks(ROW):                                               #Checks for files that didn't finish and deletes them from the numpy array
            continue
        else:
            ROW+=1


    convert_to_kcal(energies, 2, 1)


    df = pd.DataFrame(energies)                                                 #making pandas data frame, sorting it alphabeticly and writing to csv
    df.columns = ["File Name", "Energy in Au", "Kcal"]
    df_sorted = df.sort_values('File Name')
    df_sorted.to_csv(name_of_csv + '.csv')
    print(df_sorted)


def find_energy(name, ROW):
    finalnum = 0
    numbers = []
    line_number = 0


    x=os.path.join(path, name)
    file = open(x, "r")                                                         #opening the files then spliting the file into lines
    z = file.read()
    content = z.split("\n")

    for line in content:
        if "Sum of electronic and thermal Free Energies=" in line:              #Searching for the energy then adding it to the array

            for i in content[line_number]:
                if i.isdigit():
                    numbers.append(i)

                if i == ".":
                    numbers.append(i)

                if i == "-":
                    numbers.append(i)

                else:
                    continue

            blank = "".join(numbers)
            finalnum =float(blank)
            energies[ROW][0] = name
            energies[ROW][1] = finalnum

            file.close()
            return 0

        line_number+=1

    file.close()




def convert_to_kcal(list, kcalCol, auCol):                                      #conerts au to kcals
    for row in range(len(list)):
        list[row][kcalCol] = list[row][auCol] *627.503

    return list


def check_for_blanks(row):                                                      #Checking for rows blank rows in the 'energies' array and deleting them
        global energies

        if energies[row][0] == '':
            energies = np.delete(energies, row, axis=0)
            return True
        else:
            return False


if __name__ == "__main__":
    main()
