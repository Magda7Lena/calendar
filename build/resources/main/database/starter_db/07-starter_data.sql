--liquibase formatted sql
--changeset magda:1
INSERT INTO public.instructor(name, lastname, telephone) VALUES ('Jan', 'Kowalski', '500800900');
INSERT INTO public.instructor(name, lastname, telephone) VALUES ('Krzysztof', 'Nowak', '600800900');
INSERT INTO public.instructor(name, lastname, telephone) VALUES ('Robert', 'Pawlak', '700800900');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (1, '2020-08-23', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (1, '2020-08-24', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (1, '2020-08-25', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (1, '2020-08-26', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (1, '2020-08-27', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (2, '2020-08-23', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (2, '2020-08-24', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (2, '2020-08-25', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (2, '2020-08-26', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (2, '2020-08-27', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (3, '2020-08-23', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (3, '2020-08-24', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (3, '2020-08-25', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (3, '2020-08-26', '07:00:00', '15:00:00');
INSERT INTO public.work_schedule(instructor_id, date, time_start, time_end) VALUES (3, '2020-08-27', '07:00:00', '15:00:00');
INSERT INTO public.product_type(name, description, category, price, lesson_hours) VALUES ('Kurs standard', 'Opis kursu standard', 'B', 2650, 30);
INSERT INTO public.product_type(name, description, category, price, lesson_hours) VALUES ('Kurs doszkalający', 'Opis kursu doszkalającego', 'B', 850, 10);
INSERT INTO public.student(name, lastname, telephone_number) VALUES ('Marcin', 'Kanclerz', '400700800');
INSERT INTO public.student(name, lastname, telephone_number) VALUES ('Hubert', 'Etz', '500700800');
INSERT INTO public.student(name, lastname, telephone_number) VALUES ('Łukasz', 'Kwiatkowski', '600700800');
INSERT INTO public.product(product_type_id, student_id, hours_left, price, lessons_hours, book_online, is_payed) VALUES (1, 1, 30, 2650, 30, false, false);
INSERT INTO public.product(product_type_id, student_id, hours_left, price, lessons_hours, book_online, is_payed) VALUES (1, 2, 30, 2650, 30, false, false);
INSERT INTO public.product(product_type_id, student_id, hours_left, price, lessons_hours, book_online, is_payed) VALUES (2, 3, 10, 850, 10, false, false);
INSERT INTO public.lesson(product_id, instructor_id, date, time_start, time_end) VALUES (1, 1, '2020-08-23', '07:00:00', '09:00:00');
INSERT INTO public.lesson(product_id, instructor_id, date, time_start, time_end) VALUES (2, 2, '2020-08-23', '07:00:00', '09:00:00');
INSERT INTO public.lesson(product_id, instructor_id, date, time_start, time_end) VALUES (3, 3, '2020-08-23', '07:00:00', '09:00:00');





