SELECT 

--tbl_order.ord_id,
tbl_product.pro_id, 
tbl_product.pro_name, 
tbl_cart.crt_product_amount,
tbl_address.ads_neighborhood

FROM tbl_product
join tbl_cart
on (tbl_product.pro_id = tbl_cart.pro_id)
join tbl_order
on (tbl_cart.ord_id = tbl_order.ord_id)
join tbl_customer
on (tbl_order.cli_id = tbl_customer.cli_id)
join tbl_address
on (tbl_customer.ads_id = tbl_address.ads_id)
order by tbl_cart.crt_product_amount asc;