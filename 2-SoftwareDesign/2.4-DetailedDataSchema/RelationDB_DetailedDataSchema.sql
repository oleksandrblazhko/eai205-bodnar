/* Створення таблиць */

CREATE TABLE developer ( --розробник
  user_id INT, --id користувача
  dev_id INT --id розробника
);

CREATE TABLE user_info ( --користувач
 	user_id INT, --id користувача
 	user_name VARCHAR(50), --ім'я користувача
 	phone VARCHAR(50) --мобільний номер користувача
);

CREATE TABLE post_message ( --пошта/повідомлення
	message_id INT, --id листа/повідомлення
 	sender_id INT, --id відправника
	receiver_id INT, --id адресата
    message_text VARCHAR(250) --текст листа/повідомлення
);

CREATE TABLE Arduino (--модуль
  	module_id INT, --id модуля
  	user_id INT --id користувача-власника
);

CREATE TABLE temperature ( --температура
  	calc_id INT, --id вимірювання
  	temperature NUMBER(6,2), --кількість градусів
  	date_id DATE, --дата виміру
  	module_id INT --id модуля
);

CREATE TABLE personal_library ( --бібліотека
  	library_id INT, --id бібліотеки
  	user_id INT, --id користувача
    work_id INT, --id твору
    date_of_adding DATE,--дата додавання
    note VARCHAR(150)  --примітки
);

CREATE TABLE work_info ( --твір
  	work_id INT, --id твору
  	work_name VARCHAR(50),--назва твору
  	author_name VARCHAR(50), --ім'я автора
  	short_description  VARCHAR(50) --короткий опис твору
);

/* Обмеження первиних ключів */
ALTER TABLE developer ADD CONSTRAINT dev_pk
PRIMARY KEY (dev_id);
ALTER TABLE user_info ADD CONSTRAINT user_pk
PRIMARY KEY (user_id);
ALTER TABLE post_message ADD CONSTRAINT mess_pk
PRIMARY KEY (message_id);
ALTER TABLE Arduino ADD CONSTRAINT module_pk
PRIMARY KEY (module_id);
ALTER TABLE temperature ADD CONSTRAINT temp_pk
PRIMARY KEY (calc_id);
ALTER TABLE personal_library ADD CONSTRAINT lib_pk
PRIMARY KEY (library_id);
ALTER TABLE work_info ADD CONSTRAINT work_pk
PRIMARY KEY (work_id);

/* Обмеження зовнішніх ключів */
ALTER TABLE developer ADD CONSTRAINT developer_user_fk
FOREIGN KEY (user_id)
REFERENCES user_info(user_id);

ALTER TABLE post_message ADD CONSTRAINT sender_user_fk
FOREIGN KEY (sender_id)
REFERENCES user_info(user_id);

ALTER TABLE post_message ADD CONSTRAINT receiver_user_fk
FOREIGN KEY (receiver_id)
REFERENCES user_info(user_id);

ALTER TABLE Arduino ADD CONSTRAINT module_user_fk
FOREIGN KEY (user_id)
REFERENCES user_info(user_id);

ALTER TABLE temperature ADD CONSTRAINT temperature_module_fk
FOREIGN KEY (module_id)
REFERENCES Arduino(module_id);

ALTER TABLE personal_library ADD CONSTRAINT library_user_fk
FOREIGN KEY (user_id)
REFERENCES user_info(user_id);

ALTER TABLE personal_library ADD CONSTRAINT library_work_fk
FOREIGN KEY (work_id)
REFERENCES work_info(work_id);
