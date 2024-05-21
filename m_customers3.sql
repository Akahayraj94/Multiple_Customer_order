Drop table all_items
create table all_items(
ITEM_DESCRIPTION varchar(250)
)

Insert INTO all_items
select ITEM_DESCRIPTION from krishan$
union
select ITEM_DESCRIPTION from praveen$
union
select ITEM_DESCRIPTION from Prince$
union 
select ITEM_DESCRIPTION from Ravinder$
union
select ITEM_DESCRIPTION from sandeep$
union
select ITEM_DESCRIPTION from satya$
union
select ITEM_DESCRIPTION from yogesh$

select *
from all_items
order by ITEM_DESCRIPTION

SELECT *
FROM Ravinder$
	Full Outer Join Prince$
	ON Ravinder$.Item_Description= Prince$.Item_Description
	
SELECT *
FROM Ravinder$
	Join Prince$
	ON Ravinder$.Item_Description= Prince$.Item_Description

	
SELECT all_items.ITEM_DESCRIPTION as all_items,  
Prince$.Qty as Prince_qty,
krishan$.Qty as Krishan_qty,
Ravinder$.Qty as Ravinder_qty,
praveen$.Qty as Praveen_qty,
sandeep$.Qty as Sandeep_qty,
satya$.Qty as satya_qty,
yogesh$.Qty as yogesh_qty
INTO all_items3
FROM all_items
	full outer Join Prince$ ON all_items.ITEM_DESCRIPTION= Prince$.Item_Description
	full outer  Join krishan$ ON all_items.ITEM_DESCRIPTION= krishan$.Item_Description 
	full outer Join praveen$ ON all_items.ITEM_DESCRIPTION= praveen$.Item_Description 
	full outer Join sandeep$ ON all_items.ITEM_DESCRIPTION = sandeep$.Item_Description
	full outer Join satya$ ON all_items.ITEM_DESCRIPTION = satya$.Item_Description
	full outer Join Ravinder$ ON all_items.ITEM_DESCRIPTION = Ravinder$.Item_Description	
	full outer Join yogesh$ ON all_items.ITEM_DESCRIPTION = yogesh$.Item_Description	



SELECT *
FROM Prince$
UNION ALL
SELECT *
FROM Ravinder$
Order by Item_Description
