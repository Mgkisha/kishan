--different property type
select sh.property_type from `properati-data-public.properties_mx.properties_rent_201501` sh
inner join `properati-data-public.properties_ar.properties_rent_201501` ki
on sh.property_type=ki.property_type
group by sh.property_type 
