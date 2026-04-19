CREATE OR REPLACE TRIGGER tr_ins_up
BEFORE INSERT ON route_header
FOR EACH ROW
BEGIN
    :new.origin := UPPER(:new.origin);
    :new.destination := UPPER(:new.destination);
END;
/


CREATE OR REPLACE TRIGGER tr_upt_route_header
BEFORE UPDATE ON route_header
FOR EACH ROW
BEGIN
    IF :new.capacity < :old.capacity THEN
        RAISE_APPLICATION_ERROR(-20001, 'Do not reduce the capacity');
    END IF;
END;
/
