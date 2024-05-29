create table product(p_id number,p_name varchar(50),price number,quantity number, categories VARCHAR2(50),
CONSTRAINT p_id_pk primary key (p_id));

create table user_table(user_id number,user_name varchar2(50),user_email varchar2(50),user_Password varchar2(50),address varchar2(50),phonenumber number,
CONSTRAINT user_id_pk primary key(user_id));

create table order_table(
  order_id number primary key,
  order_date date,
  total_quantity number,
  p_id number,
  user_id number,
  
  CONSTRAINT product_id_fk foreign key (p_id) references product(p_id),
  CONSTRAINT user_id_fk foreign key (user_id) references user_table(user_id)
);

CREATE TABLE payment (
    payment_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    total_price NUMBER,
    p_method VARCHAR2(50),
    CONSTRAINT fk_payment_order_id FOREIGN KEY (order_id) REFERENCES order_table(order_id)
);
SELECT * from payment;


