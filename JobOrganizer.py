import os
import subprocess
import pandas as pd
import numpy as np


userin1 = input("Name of txt file, do not at extention: ")

userin2 = input("Sort alphabeticly? yes/no: ")


def main():

    
    process = subprocess.Popen(["sacct -o JobName -o End -o Elapsed -o State -p -X -S 0101"],shell=True, stdout=subprocess.PIPE)        #Running the slurm command in the shell, then piping output to 'lines'
    output, errors= process.communicate()
    lines = output.decode('utf-8').splitlines()
    
    
    #df = pd.read_csv('info.txt', sep=" ",header=None)

    df = pd.DataFrame(lines)
    df = df[0].str.split('|',expand=True)
    df.columns=['JobName','End Time','Elapsed Time', 'Status','blank']
    df = df.drop(0)
    df = df.drop('blank',1)

    df = sort_by_EndTime(df, 'End Time')
    df = check_for_repeats(df,'JobName')

    if userin2 == "yes":
        df = df.sort_values('JobName')


    df.to_csv(userin1+'.txt', header=None, index=False, sep=' ', mode='a')



    print(df)





    #print('data:{}'.format(data))

    #sacct -o JobName -o End -o Elasped -o State -X -S 0101
    #"-S", "0505", "-E", "0704"


def sort_by_EndTime(dataframe, column_name):

    dataframe = dataframe.reset_index()
#    print(dataframe)
    list_to_be_deleted = dataframe[dataframe[column_name]=='Unknown'].index.tolist()

    names = ['JobName','End Time','Elapsed Time', 'Status']
    extras = pd.DataFrame(columns= names)


    for i in range(len(list_to_be_deleted)-1,-1,-1):
        extras = extras.append(dataframe.iloc[list_to_be_deleted[i]])
        dataframe = dataframe.drop(list_to_be_deleted[i])


    dataframe[column_name]=pd.to_datetime(dataframe[column_name])
    dataframe = dataframe.sort_values(by=column_name, ascending=False)

    dataframe = pd.concat([extras, dataframe])
    dataframe = dataframe.drop('index',1)

    return dataframe


def check_for_repeats(data,name):

    data = data.drop_duplicates(subset=name, keep='first', inplace=False, ignore_index=True)

    return data


if __name__ == "__main__":
    main()



