CREATE OR REPLACE TRIGGER SalaryTrig 
BEFORE INSERT ON emp_dup
FOR EACH ROW
DECLARE
  v_upper_sal_limit NUMBER(10,2);
  v_lower_sal_limit NUMBER(10,2);
BEGIN
  SELECT MIN(sal) * 10 INTO v_upper_sal_limit FROM emp_dup;
  SELECT MAX(sal) / 10 INTO v_lower_sal_limit FROM emp_dup;
  IF :new.sal NOT BETWEEN v_lower_sal_limit AND v_upper_sal_limit THEN
    RAISE_APPLICATION_ERROR(-20021, 'Salary out of allowed range');
  END IF;
END;
/
