CREATE OR REPLACE PROCEDURE update_employee_salary(
    emp_id INT,
    new_salary NUMERIC,
    bonus NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employee
    SET salary = calculate_salary(new_salary, bonus)
    WHERE employee_id = emp_id;

    RAISE NOTICE 'Employee % salary updated', emp_id;
END;
$$;
