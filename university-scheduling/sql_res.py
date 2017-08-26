#File processing for automation of SQL code; Creates SQL code for Reservation table
#Author: Xavier Collantes
#Date: 12/13/2016

from random import *

def main():
    #Open the file location to write to
    f = open("./res.sql", "w+")

    #Put how many entries you want
    num_entries = 30
    room_id_arr = []

    #Group array 
    group = ["G+", "Dissertation on Japanese Bees", "Fight Club",
             "Joshs Birthday Party", "RAs","Dumbledores Army",
             "ISU", "AA", "AA", "Guy Fieri Fan Club","FASU",
             "FASU", "MIS Club", "Soccer", "Rowing",
             "Harry Potter Club", "AA", "Kennel Club",
             "Staff interview","How Reddit Changed my Life",
             "Sweaters Annoynmous", "Ugly X-Mas", "Circle",
             "SQL Club", "Dance Annonymous", "Cheerleading",
             "La Raza", "Spike the Bulldog", "Dr. Chen Fan Club", "Research"]

    #Checks if room_id_arr is empty. If empty, assign first value 
    if len(room_id_arr) == 0:
        room_id_arr.append(str(randint(1, 150)))

    #Assigns unique values for the room_id_arr 
    for y in range(1, num_entries):
        insert = str(randint(1, 250))          
        while (room_id_arr[y - 1] == insert):
            insert = str(randint(1, 250))
        room_id_arr.append(insert)
                                 
    #Counter for guests
    g = 1
    for x in range(0, num_entries):

        #Random values for id, dates, and increments for end dates 
        mon = randint(10, 12)
        day = randint(1, 30)
        hour = randint(8, 18)
        minute = randint(0, 45)
        type_id = str(randint(1, 4))

        #Start and End dates
        start = str("TO_DATE('2016/"+ str(mon).zfill(2)
                    +"/"+str(day).zfill(2)+" "+str(hour).zfill(2)+":"
                    +str(minute).zfill(2)+"', 'YYYY/MM/DD 24H:MI')")
        end = str("TO_DATE('2016/"+str(mon).zfill(2)
                  +"/"+str(day).zfill(2)+" "+str(hour + randint(1, 2)).zfill(2)+":"
                  +str(abs(minute - randint(30, 60))).zfill(2)+"', 'YYYY/MM/DD 24H:MI')")

        occ = str(randint(1, 10))
        f.write("INSERT INTO Reservation(reservation_id, room_id, guest_id,
                type_id, start_time, end_time, occupancy, group_name)\n")
        f.write("VALUES (reservation_reservation_id_seq.NEXTVAL, " + room_id_arr[x] + ", " + str(g) + ", "
                + type_id + ", " + start + ", " + end + ", " + occ + ", " + "'" + group[x] + "'" + ");\n\n")
        
        #Cycles through guest list 
        if g == 12:
            g = 1
        else:
            g = g + 1
    f.close() 
main()





                           
