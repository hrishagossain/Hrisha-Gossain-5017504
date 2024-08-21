CREATE OR REPLACE FUNCTION CalculateAge(p_DOB DATE)
RETURN NUMBER
IS
    v_Age NUMBER;
BEGIN
    v_Age := TRUNC(MONTHS_BETWEEN(SYSDATE, p_DOB) / 12);
    RETURN v_Age;
END CalculateAge;
/
