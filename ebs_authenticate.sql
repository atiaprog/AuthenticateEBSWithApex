CREATE OR REPLACE
function ebiz_suit e_auth (p_username IN VARCHAR2, p_password IN VARCHAR2)
return boolean
as
be gin
if fn d_web_sec.validate_login(p_username, p_password) = 'Y' then
return true;
else
retu rn false;
end if;
end;