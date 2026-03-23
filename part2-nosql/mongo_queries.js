// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "ELEC001",
    name: "iPhone 15",
    category: "Electronics",
    price: 75000,
    brand: "Apple",
    specs: {
      warranty_years: 1,
      voltage: "220V",
      battery: "4000mAh"
    },
    features: ["5G", "Face ID", "OLED Display"]
  },
  {
    product_id: "CLOTH001",
    name: "Men's Denim Jacket",
    category: "Clothing",
    price: 3500,
    brand: "Levis",
    sizes: ["S", "M", "L", "XL"],
    material: "Denim",
    colors: ["Blue", "Black"]
  },
  {
    product_id: "GROC001",
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: new Date("2024-12-25"),
    nutrition: {
      calories: 150,
      fat: "8g",
      protein: "6g"
    },
    storage: "Refrigerated"
  }
]);

// OP2: find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne — add discount_percent
db.products.updateOne(
  { product_id: "ELEC001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex on category
db.products.createIndex({ category: 1 });
// This index improves query performance when filtering by category