CREATE TABLE measures_history (
    id SERIAL PRIMARY KEY,
    image_url TEXT NOT NULL,  
    measure_value DECIMAL(10, 2) NOT NULL,  
    measure_uuid UUID NOT NULL UNIQUE,
    customer_code VARCHAR(50) NOT NULL,  
    measure_datetime TIMESTAMP NOT NULL,  
    measure_type VARCHAR(10) CHECK (measure_type IN ('WATER', 'GAS')) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);