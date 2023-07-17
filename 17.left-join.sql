SELECT * FROM addresses
LEFT JOIN users ON addresses.id=users.address_id;