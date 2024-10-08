BLOCO PL/SQL - PROCEDURAL LANGUAGE EM SQL (STRUCTURE QUERY LANGUAGE)

SELECT * FROM aula_02 ORDER BY 1
DECLARE
    v_data   DATE := sysdate;
    v_nome   VARCHAR2(30) := 'MEU NOME';
    contador NUMBER := 0;
BEGIN
    FOR x IN 1..1000 LOOP
        INSERT INTO aula_02 (
            nome,
            data
        ) VALUES (
            x
            || ' '
            || v_nome,
            v_data
        );

        IF MOD(contador, 10) = 0 THEN
            COMMIT;
        END IF; 
        contador := contador + 1;
    END LOOP;

    COMMIT;
END;

