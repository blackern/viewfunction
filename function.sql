-- DROP FUNCTION public.check_user_status();

CREATE OR REPLACE FUNCTION public.check_user_status(p_id int)
RETURNS text
LANGUAGE plpgsql
AS $function$
DECLARE
	v_active boolean;
BEGIN
	SELECT active INTO v_active
	FROM users
	WHERE id = p_id;
    IF p_id IS NULL THEN 
        RETURN 'Usuario não foi encotnrado';
    ELSIF v_active = TRUE THEN 
        RETURN 'Usuario está ativo';
    ELSIF v_active = FALSE THEN 
        RETURN 'Usuario está inativo';
    END IF;
END;
$function$;;
