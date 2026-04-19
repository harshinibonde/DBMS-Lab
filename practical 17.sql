CREATE OR REPLACE TRIGGER tr_upt_sal 
AFTER UPDATE OF sal ON emp
FOR EACH ROW
BEGIN
  INSERT INTO SAL_MOD (Empno, Dname, Old_Sal, Mod_Date)
  VALUES (:old.Empno, :old.Dname, :old.Sal, SYSDATE);
END;
/
