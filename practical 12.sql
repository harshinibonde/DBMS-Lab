CREATE OR REPLACE FUNCTION number_of_employees RETURN NUMBER AS
    total NUMBER := 0;
BEGIN
    SELECT COUNT(*) INTO total FROM emp;
    RETURN total;
END;
/


CREATE OR REPLACE FUNCTION email_return(v_fname mytable.fname%TYPE, v_lname mytable.lname%TYPE) RETURN VARCHAR2 AS
BEGIN
    RETURN v_fname || '.' || v_lname || '@sitnagpur.siu.edu.in';
END;
/
