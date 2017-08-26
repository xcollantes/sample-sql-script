DROP TABLE RESERVATION CASCADE CONSTRAINTS;
DROP TABLE ROOM CASCADE CONSTRAINTS;
DROP TABLE FACILITY CASCADE CONSTRAINTS;
DROP TABLE MEETING_TYPE CASCADE CONSTRAINTS;
DROP TABLE GUEST CASCADE CONSTRAINTS;

CREATE TABLE guest
(guest_id VARCHAR2(30)
CONSTRAINT guest_userid_pk PRIMARY KEY,
guest_fname VARCHAR2(30)
CONSTRAINT guest_userfname_nn NOT NULL,
guest_lname VARCHAR2(30)
CONSTRAINT guest_userlname_nn NOT NULL,
phone VARCHAR2(15)
CONSTRAINT guest_phone_nn NOT NULL,
email VARCHAR2(30)
);

CREATE TABLE facility(
facility_id NUMBER(4)
CONSTRAINT facility_facility_id_pk PRIMARY KEY,
facility_name VARCHAR2(20));

CREATE TABLE meeting_type(
type_id NUMBER(2)
CONSTRAINT meeting_type_type_id_pk PRIMARY KEY,
type_name VARCHAR2(20));

CREATE TABLE room(
room_id NUMBER(4)
CONSTRAINT room_room_id_pk Primary Key,
Room# NUMBER(3)
CONSTRAINT room_room_no_nn NOT NULL,
Room_cap NUMBER (3)
CONSTRAINT room_room_cap_nn NOT NULL,
Facility_id NUMBER(4),
CONSTRAINT room_facility_id_fk FOREIGN KEY (Facility_id)
REFERENCES facility(facility_id)
);

CREATE TABLE reservation
(reservation_id NUMBER(10),
CONSTRAINT reservation_reservation_id_pk PRIMARY KEY (reservation_id),
Facility_id Number(4),
CONSTRAINT reservation_facility_id_fk FOREIGN KEY (facility_id),
REFERENCES facility(facility_id),
Room_id NUMBER(4),
CONSTRAINT room_room_id_fk FOREIGN KEY (Room_id)
REFERENCES room(room_id),
guest_id VARCHAR2(30),
CONSTRAINT reservation_guest_id_fk FOREIGN KEY (guest_id)
REFERENCES guest(guest_id),
type_id NUMBER(2),
CONSTRAINT reservation_type_id_fk FOREIGN KEY (type_id)
REFERENCES meeting_type(type_id),
start_time DATE,
end_time DATE,
occupancy NUMBER(3),
Group_name VARCHAR2(100));

CREATE SEQUENCE facility_facility_id_seq
Increment by 1 
Start with 1;
CREATE SEQUENCE room_room_id_seq
Increment by 1 
Start with 1;
CREATE SEQUENCE meeting_type_type_id_seq
Increment by 1 
Start with 1;
CREATE SEQUENCE guest_guest_id_seq
Increment by 1 
Start with 1;
Create sequence reservation_reservation_id_seq
Increment by 1
Start with 1;

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Hemmingson Center');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'College Hall');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Foley Library');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Crosby Center');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Herak');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'PACCAR Center');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Hughes Hall');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Rosauer Center');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Jepson');

INSERT INTO facility (facility_id, facility_name)
VALUES (facility_facility_id_seq.NEXTVAL, 'Jundt Art Center');



INSERT INTO meeting_type(type_id, type_name)
VALUES (meeting_type_type_id_seq.NEXTVAL, 'Student');

INSERT INTO meeting_type(type_id, type_name)
VALUES (meeting_type_type_id_seq.NEXTVAL, 'Faculty');

INSERT INTO meeting_type(type_id, type_name)
VALUES (meeting_type_type_id_seq.NEXTVAL, 'Professional');

INSERT INTO meeting_type(type_id, type_name)
VALUES (meeting_type_type_id_seq.NEXTVAL, 'Other');



INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Lucya', 'Leche', '(510)260-9880', 'leche@zagmail.gonzaga.edu');

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Marla', 'Singer', '(402)555-0134', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Kanye', 'West', '(206)452-4532', 'west@yeezy.com');

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Conan', 'OBrian', '(206)452-4532', 'orange@conan.com');

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Tatao', 'Chuang', '(808)485-6969', 'chuang@gonzaga.edu');

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Josh', 'Hoidn', '(206)452-4532', 'jhoidn@zagmail.gonzaga.edu');

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Colleen', 'Rumens', '(206)452-4532', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Tyler', 'Durden', '(453)452-4566', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Cosmo', 'Kramer', '(705)625-4523', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'August', 'Ames', '(911)911-4563', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Jenaveve', 'Jolie', '(206)452-4532', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'John', 'Cartwright', '(206)452-4532', null);

INSERT INTO guest(guest_id, guest_fname, guest_lname, phone, email) 
VALUES (guest_guest_id_seq.NEXTVAL, 'Art', 'Vandelay', '(206)452-4532', null);



INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 59, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 67, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 31, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 72, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 33, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 5, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 48, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 18, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 45, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 59, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 53, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 12, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 33, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 15, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 61, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 59, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 1, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 32, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 15, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 27, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 46, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 45, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 10, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 64, 1);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 76, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 45, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 12, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 57, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 52, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 81, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 47, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 37, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 15, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 3, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 63, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 23, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 37, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 63, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 78, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 82, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 19, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 45, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 47, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 3, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 76, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 12, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 31, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 69, 2);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 82, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 8, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 69, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 9, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 80, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 31, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 57, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 45, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 7, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 37, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 66, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 26, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 69, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 6, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 44, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 70, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 84, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 51, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 14, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 22, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 19, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 61, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 45, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 69, 3);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 38, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 30, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 77, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 31, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 3, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 77, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 70, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 71, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 57, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 5, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 58, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 24, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 10, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 15, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 56, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 63, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 2, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 60, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 60, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 68, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 70, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 52, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 69, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 87, 4);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 81, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 78, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 52, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 14, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 59, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 22, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 21, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 88, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 21, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 87, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 6, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 62, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 82, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 25, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 26, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 70, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 88, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 70, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 71, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 43, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 61, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 90, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 69, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 47, 5);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 67, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 39, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 51, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 70, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 40, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 56, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 85, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 52, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 10, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 28, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 7, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 75, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 30, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 29, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 30, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 70, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 36, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 29, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 68, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 73, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 38, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 72, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 17, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 80, 6);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 29, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 48, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 67, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 81, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 81, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 80, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 70, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 27, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 89, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 21, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 22, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 83, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 48, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 21, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 9, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 64, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 86, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 38, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 17, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 89, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 63, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 69, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 41, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 14, 7);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 66, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 77, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 48, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 8, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 72, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 29, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 57, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 54, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 5, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 17, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 7, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 40, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 47, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 63, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 88, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 34, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 39, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 72, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 54, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 38, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 52, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 25, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 60, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 36, 8);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 34, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 39, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 23, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 79, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 43, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 58, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 44, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 59, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 18, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 76, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 39, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 62, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 53, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 83, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 48, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 71, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 32, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 46, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 83, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 7, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 82, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 70, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 41, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 3, 9);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 101, 47, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 103, 47, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 105, 69, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 107, 88, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 109, 75, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 111, 19, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 113, 31, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 115, 86, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 201, 19, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 203, 85, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 205, 2, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 207, 15, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 209, 36, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 211, 30, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 213, 85, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 215, 51, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 301, 37, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 303, 6, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 305, 14, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 307, 50, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 309, 58, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 311, 55, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 313, 26, 10);

INSERT INTO Room(room_id, room#, room_cap, facility_id)
VALUES (room_room_id_seq.NEXTVAL, 315, 46, 10);




INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 141, 1, 2, TO_DATE('2016/10/08 10:19'), TO_DATE('2016/10/08 11:57'), 9, “G+”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 320, 2, 1, TO_DATE('2016/12/28 18:08'), TO_DATE('2016/12/28 19:43'), 2, “FASU”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 278, 3, 1, TO_DATE('2016/12/11 12:37'), TO_DATE('2016/12/11 14:78'), 5, “La Raza”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 80, 4, 1, TO_DATE('2016/10/26 17:17'), TO_DATE('2016/10/26 19:73'), 2, “Thayne”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 121, 5, 2, TO_DATE('2016/10/01 18:33'), TO_DATE('2016/10/01 19:85'), 4, “Cheerleading”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 319, 6, 3, TO_DATE('2016/10/28 14:41'), TO_DATE('2016/10/28 15:77'), 7, “Bio”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 37, 7, 3, TO_DATE('2016/10/12 18:40'), TO_DATE('2016/10/12 20:77'), 5, “research”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 95, 8, 2, TO_DATE('2016/10/06 09:31'), TO_DATE('2016/10/06 11:86'), 8, “study”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 310, 9, 3, TO_DATE('2016/10/28 08:44'), TO_DATE('2016/10/28 10:10'), 10, “Budget”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 363, 10, 2, TO_DATE('2016/11/29 16:38'), TO_DATE('2016/11/29 18:91'), 9);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 332, 11, 4, TO_DATE('2016/10/26 08:03'), TO_DATE('2016/10/26 09:36'), 4, "TEST");

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 399, 12, 4, TO_DATE('2016/10/21 08:16'), TO_DATE('2016/10/21 10:55'), 3, "TEST");

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 125, 1, 3, TO_DATE('2016/10/30 15:35'), TO_DATE('2016/10/30 16:82'), 5, "TEST");

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 375, 2, 3, TO_DATE('2016/11/19 12:06'), TO_DATE('2016/11/19 13:39'), 2, "TEST");

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 149, 3, 1, TO_DATE('2016/10/03 17:15'), TO_DATE('2016/10/03 19:71'), 2);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 389, 4, 2, TO_DATE('2016/11/22 15:44'), TO_DATE('2016/11/22 16:79'), 5);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 346, 5, 1, TO_DATE('2016/12/05 09:25'), TO_DATE('2016/12/05 11:81'), 7, “Fight Club”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 247, 6, 1, TO_DATE('2016/11/30 10:02'), TO_DATE('2016/11/30 12:49'), 7, “Dissertation on the operations of Japanese bumblebees”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 274, 7, 1, TO_DATE('2016/12/22 16:12'), TO_DATE('2016/12/22 18:43'), 1, “SQL Lessons”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 41, 8, 3, TO_DATE('2016/11/20 9:30'), TO_DATE('2016/11/20 10:72'), 8, “Googling Errors”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 50, 9, 1, TO_DATE('2016/11/11 15:34'), TO_DATE('2016/11/11 17:93'), 2, “How Reddit Changed My Life”);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 38, 10, 3, TO_DATE('2016/12/05 18:37'), TO_DATE('2016/12/05 20:96'), 3);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 145, 11, 1, TO_DATE('2016/11/04 12:00'), TO_DATE('2016/11/04 14:34'), 4);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 280, 12, 1, TO_DATE('2016/10/26 13:39'), TO_DATE('2016/10/26 14:89'), 4);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 75, 1, 2, TO_DATE('2016/11/14 16:22'), TO_DATE('2016/11/14 17:52'), 1);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 293, 2, 4, TO_DATE('2016/12/30 11:33'), TO_DATE('2016/12/30 13:69'), 7, "Student Study");

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 293, 3, 3, TO_DATE('2016/12/23 11:35'), TO_DATE('2016/12/23 13:82'), 10);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 109, 4, 4, TO_DATE('2016/11/30 16:09'), TO_DATE('2016/11/30 17:63'), 1, "MIS Meeting");

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 364, 5, 3, TO_DATE('2016/12/01 18:31'), TO_DATE('2016/12/01 20:68'), 2);

INSERT INTO Reservation(reservation_id, room_id, guest_id, type_id, start_time, end_time, occupancy, group_name)
VALUES (reservation_reservation_id_seq.NEXTVAL, 260, 6, 2, TO_DATE('2016/12/13 16:22'), TO_DATE('2016/12/13 17:70'), 7);

 
