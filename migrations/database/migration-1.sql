-- Migration $i
-- Created: 2026-06-06

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS table_$i (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_table_$i_name ON table_$i(name);
CREATE INDEX idx_table_$i_created_at ON table_$i(created_at);

COMMIT;
