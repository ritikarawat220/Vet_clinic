CREATE DATABASE medical;

---patients table
CREATE TABLE patients (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE
);

---medical_histories table
CREATE TABLE medical_histories (
    id INT PRIMARY KEY,
    admitted_at TIMESTAMP,
    patient_id INT,
    status VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES patients(Id)
);

--treatments table
CREATE TABLE treatments (
    id INT PRIMARY KEY,
    type VARCHAR(255),
    name VARCHAR(255)
);

--invoices table 
CREATE TABLE invoices (
    id INT PRIMARY KEY,
    total_amount DECIMAL,
    generated_id TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT,
    FOREIGN KEY (medical_history_id) REFERENCES medical_histories(Id)
);

---invoice-items table
CREATE TABLE invoice_items (
    id INT PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total_price DECIMAL,
    invoice_id INT,
    treatment_id INT,
    FOREIGN KEY (invoice_id) REFERENCES invoices(id),
    FOREIGN KEY (treatment_id) REFERENCES treatments(Id)
)

-- Add foreign key index to medical_histories table
CREATE INDEX idx_medical_histories_patient_id ON medical_histories (patient_id);

-- Add foreign key index to invoices table
CREATE INDEX idx_invoices_medical_history_id ON invoices (medical_history_id);

-- Add foreign key indexes to invoice_items table
CREATE INDEX idx_invoice_items_invoice_id ON invoice_items (invoice_id);
CREATE INDEX idx_invoice_items_treatment_id ON invoice_items (treatment_id);
