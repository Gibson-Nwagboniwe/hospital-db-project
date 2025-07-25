-- Create roles
CREATE ROLE readonly_user LOGIN PASSWORD 'readonlypass';
GRANT CONNECT ON DATABASE hospital_db TO readonly_user;

-- Restrict readonly_user to SELECT only
GRANT USAGE ON SCHEMA public TO readonly_user;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly_user;

-- Future-proof for new tables
ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT ON TABLES TO readonly_user;
