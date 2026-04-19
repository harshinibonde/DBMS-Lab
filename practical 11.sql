CREATE OR REPLACE FUNCTION reverse_it(x IN INT) RETURN INT AS
  z INT;
  rev INT := 0;
  r INT;
BEGIN
  WHILE x > 0 LOOP
    r := MOD(x, 10);
    rev := (rev * 10) + r;
    x := TRUNC(x / 10);
  END LOOP;
  
  z := rev;
  RETURN z;
END;
/
