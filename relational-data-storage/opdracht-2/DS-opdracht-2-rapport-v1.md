# RAPPORT `mhl` database

## Tables missing Foreign Keys:
* mhl_cities                        (commune_ID)
* mhl_communes                      (district_ID)
* mhl_contacts                      (supplier_ID, department)
* mhl_detaildefs                    (group_ID, propertytype_ID)
* mhl_districts                     (country_ID)
* mhl_hitcount                      (supplier_ID)
* mhl_properties                    (supplier_ID, propertytype_ID)
* mhl_suppliers                     (membertype, company, city_id, postcode)
* mhl_suppliers_mhl_rubriek_view    (mhl_suppliers_ID, mhl_rubriek_view_ID)
* mhl_yn_properties                 (supplier_ID, propertytype_ID)

------------------------------------------------------------------------------- 

## Tables where column should not be nullable or have default value:
* mhl_brands                        (name)
* mhl_cities                        (name, commune_ID)
* mhl_communes                      (name, district_ID)
* mhl_companies                     (name)
* mhl_contacts                      (name, supplier_ID, department, contacttype, email)
* mhl_countries                     (name, code)
* mhl_departments                   (name)
* mhl_detailgroups                  (name)
* mhl_districts                     (name, code)
* mhl_membertypes                   (name)
* mhl_propertytypes                 (name, content)
* mhl_rubrieken                     (name)
* mhl_suppliers                     (name, company, membertype, straat, huisnr, postcode, city_ID)
* mhl_suppliers_mhl_rubriek_view    (mhl_suppliers_ID, mhl_rubriek_view_ID)
* mhl_yn_properties                 (supplier_ID, propertytype_ID)
* pc_lat_long                       (pc6, lat, long)

------------------------------------------------------------------------------- 
## Examples
`mhl_suppliers` table:
* problem: 
    - `company` column is nullable and has default value 0

    SELECT COUNT(*) AS result
    FROM mhl_suppliers
    WHERE company = 0;
    -> result = 7444

    - `membertype` column is not nullable and has default value 0

    SELECT COUNT(*) AS result
    FROM mhl_suppliers
    WHERE membertype = 0; 
    -> result = 12

* solution: 
    - update `company` that are 0 to null

    UPDATE mhl_suppliers
    SET company = NULL
    WHERE company = 0;

    - alter `membertype` column to nullable, remove default value, and update `membertype` that are 0 to null

    ALTER mhl_suppliers 
    MODIFY membertype INT(11);

    UPDATE mhl_suppliers 
    SET membertype = NULL
    WHERE membertype = 0;

------------------------------------------------------------------------------- 

## `mhl_brands` table:
* problem: 
    - `name` column is nullable 
* solution: 
    - alter `name` column to not null

    ALTER mhl_brands
    MODIFY name VARCHAR(50) NOT NULL;

------------------------------------------------------------------------------- 
