log_file = open("um-server-01.txt") #this is assigning the text file to a variable so when it's called it will open and have access the the file


def sales_reports(log_file): #a function that will sift through the data line by line and print the whole line only if the first 3 chars of the line are "Tue" exactly
    for line in log_file:    #a for-loop that creates a line variable representing a whole line of data within the file at a time
        line = line.rstrip() #strips the line data of any trailing characters, this makes the data more predictable and avoides things like '\n'
        day = line[0:3]      #assigns a day variable to the first 3 chars of the line. This represents the actual day of the week timeline for each data line entry
        # if day == "Tue":   #if statement checking if the day variable is "Tue".
        if day == "Mon":       
            print(line)      #prints the entire data line if the above if statement is true


#sales_reports(log_file)      #invokes the sales_reports function with the parameter "log_file" which opens a file

#EXTRA CREDIT
def melon(file):
    for line in file:
        line = line.rstrip()
        if ('melon' in line):
            line = line.split()
            if (int(line[2]) > 10):
                print(line)
melon(log_file)