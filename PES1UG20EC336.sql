 DELIMITER $$
create function due(due date)
    -> returns varchar(50)
    -> deterministic
    -> begin
    -> declare cdate date;
    -> if cdate< due then
    -> return "no";
    -> else
    -> return "yes";
    -> end if;
    -> end $$



 DELIMITER $$
create Procedure parts_replace(IN service_id int(11), IN emp_id int(11), IN parts_id int(11), OUT name varchar(100))
    -> begin
    -> update parts set qty=qty+1 where parts_id=p_id;
    -> select F_name into name from service_manager where M_emp_id=emp_id;
    -> end;
    -> $$
DELIMITER ;
call parts_replace(400,601,700,@M);