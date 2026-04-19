CREATE OR REPLACE TRIGGER TR_TEST1_DEL_UPT_INSR
BEFORE INSERT OR DELETE OR UPDATE ON TEST1
FOR EACH ROW
DECLARE 
  sydate CHAR(4);
BEGIN
  sydate := TO_CHAR(SYSDATE, 'dy');
  IF sydate NOT IN ('sat', 'sun') THEN
    DBMS_OUTPUT.put_line('Operation allowed');
  ELSE
    RAISE_APPLICATION_ERROR(20001, 'Operation not allowed on weekends');
  END IF;
END;
/
