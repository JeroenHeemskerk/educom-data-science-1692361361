/******************************************************************************
 DROP FOREIGN KEYS
******************************************************************************/

ALTER TABLE mhl_cities
DROP FOREIGN KEY fk_commune_ID;

ALTER TABLE mhl_communes
DROP FOREIGN KEY fk_district_ID;

ALTER TABLE mhl_contacts
DROP FOREIGN KEY fk_department;

ALTER TABLE mhl_contacts
DROP FOREIGN KEY fk_supplier_ID;

ALTER TABLE mhl_detaildefs
DROP FOREIGN KEY fk_group_ID;

ALTER TABLE mhl_detaildefs
DROP FOREIGN KEY fk_propertytype_ID;

ALTER TABLE mhl_districts
DROP FOREIGN KEY fk_country_ID;

ALTER TABLE mhl_hitcount
DROP FOREIGN KEY fk_supplier_ID;

ALTER TABLE mhl_properties
DROP FOREIGN KEY fk_supplier_ID;

ALTER TABLE mhl_properties
DROP FOREIGN KEY fk_propertytype_ID;

ALTER TABLE mhl_suppliers
DROP FOREIGN KEY fk_membertype;

ALTER TABLE mhl_suppliers
DROP FOREIGN KEY fk_company;

ALTER TABLE mhl_suppliers
DROP FOREIGN KEY fk_postcode;

ALTER TABLE mhl_suppliers
DROP FOREIGN KEY fk_city_ID;

ALTER TABLE mhl_suppliers_mhl_rubriek_view
DROP FOREIGN KEY fk_mhl_supplier_ID;

ALTER TABLE mhl_suppliers_mhl_rubriek_view
DROP FOREIGN KEY fk_mhl_rubriek_view_ID;

ALTER TABLE mhl_yn_properties
DROP FOREIGN KEY fk_supplier_ID;

ALTER TABLE mhl_yn_properties
DROP FOREIGN KEY fk_propertytype_ID;

/******************************************************************************
 ADD FOREIGN KEYS
******************************************************************************/

ALTER TABLE mhl_cities
ADD CONSTRAINT fk_commune_ID
FOREIGN KEY (commune_ID) REFERENCES mhl_communes(id); 

ALTER TABLE mhl_communes
ADD CONSTRAINT fk_districtID
FOREIGN KEY (district_ID) REFERENCES mhl_districts(id);

ALTER TABLE mhl_contacts
ADD CONSTRAINT fk_department
FOREIGN KEY (department) REFERENCES mhl_departments(id);

ALTER TABLE mhl_contacts
ADD CONSTRAINT fk_supplier_ID
FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id);

ALTER TABLE mhl_detaildefs
ADD CONSTRAINT fk_group_ID
FOREIGN KEY (group_ID) REFERENCES mhl_detailgroups(id);

ALTER TABLE mhl_detaildefs
ADD CONSTRAINT fk_propertytype_ID
FOREIGN KEY (propertytype_ID) REFERENCES mhl_propertytypes(id);

ALTER TABLE mhl_districts
ADD CONSTRAINT fk_country_ID
FOREIGN KEY (country_ID) REFERENCES mhl_countries(id);

ALTER TABLE mhl_hitcount
ADD CONSTRAINT fk_supplierID
FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id);

ALTER TABLE mhl_properties
ADD CONSTRAINT fk_supplier_ID
FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id);

ALTER TABLE mhl_properties
ADD CONSTRAINT fk_propertytypeID
FOREIGN KEY (propertytype_ID) REFERENCES mhl_propertytypes(id);

ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_membertype
FOREIGN KEY (membertype) REFERENCES mhl_membertypes(id);

ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_company
FOREIGN KEY (company) REFERENCES mhl_companies(id);

ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_postcode
FOREIGN KEY (postcode) REFERENCES pc_lat_long(pc6);

ALTER TABLE mhl_suppliers
ADD CONSTRAINT fk_city_ID
FOREIGN KEY (city_ID) REFERENCES mhl_cities(id);

ALTER TABLE mhl_suppliers_mhl_rubriek_view
ADD CONSTRAINT fk_mhl_supplier_ID
FOREIGN KEY (mhl_suppliers_ID) REFERENCES mhl_suppliers(id);

ALTER TABLE mhl_suppliers_mhl_rubriek_view
ADD CONSTRAINT fk_mhl_rubriek_view_ID
FOREIGN KEY (mhl_rubriek_view_ID) REFERENCES mhl_rubrieken(id);

ALTER TABLE mhl_yn_properties
ADD CONSTRAINT fk_supplier_ID
FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id);

ALTER TABLE mhl_yn_properties
ADD CONSTRAINT fk_propertytype_ID
FOREIGN KEY (propertytype_ID) REFERENCES mhl_propertytypes(id);