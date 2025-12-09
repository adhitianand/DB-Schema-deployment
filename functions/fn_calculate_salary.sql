CREATE OR REPLACE FUNCTION calculate_salary(base_salary NUMERIC, bonus NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN base_salary + bonus;
END;
$$ LANGUAGE plpgsql;
