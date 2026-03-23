## Anomaly Analysis

### Insert Anomaly
In the current flat file structure, we cannot store information about a new entity without an associated transaction. For example, if the company stocks a new product like Product_ID P009 (Gaming Mouse), it cannot be added to the database until a customer actually places an order for it. This is because the table is centered around `order_id`, and leaving transaction fields null for a product entry would violate data integrity or primary key constraints in a real DB.

### Update Anomaly
Information is redundantly stored, leading to inconsistencies if a value is updated in one place but not others. A clear example is found with Sales Rep SR01 (Deepak Joshi). In Row 2 (ORD1114), his office address is listed as *"Mumbai HQ, Nariman Point, Mumbai - 400021"*, but in Row 38 (ORD1176), it is abbreviated to *"Mumbai HQ, Nariman Pt, Mumbai - 400021"*. If the office moves, an admin must update every single order row associated with that rep, or the data becomes conflicting.

### Delete Anomaly
Deleting a transaction can result in the unintentional loss of master data. For instance, Product_ID P008 (Desk Lamp) appears only in Row 12 (ORD1122). If the manager decides to delete that specific order record from the system, the entire record of that product's existence, its name, and its category is permanently wiped from the database.

## Normalization Justification

The manager's argument that a single table is "simpler" mistakes short-term ease of data entry for long-term systemic stability. While a flat file allows for quick viewing, it creates severe data integrity risks that can lead to financial and operational errors. Using the `orders_flat.csv` dataset as evidence, we can see that normalization is a necessity rather than over-engineering.

Firstly, the Update Anomaly identified in the Sales Representative's office address (Rows 2 and 38) proves that redundancy breeds inconsistency. In a real-world scenario with thousands of rows, such discrepancies make it impossible to generate accurate contact lists or regional reports. By normalizing to Third Normal Form (3NF), we move the address to a dedicated `Sales_Reps` table where it exists in exactly one place. This ensures that a single update reflects across the entire system instantly.

Secondly, the Insert Anomaly prevents the business from being proactive. Currently, a product like a "Gaming Mouse" cannot exist in the system without a sale. Normalization allows the `Products` table to act as a standalone catalog, enabling inventory management before the first sale occurs.

Finally, the Delete Anomaly (seen in Row 12) poses a risk of losing historical product data. By separating `Customers`, `Products`, `Sales_Reps`, and `Orders`, we ensure that deleting an order record only removes the transaction, preserving the valuable master data of our clients and inventory. Therefore, normalization is the only way to ensure the "single source of truth" required for a growing retail business.