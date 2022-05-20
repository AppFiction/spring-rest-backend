-- get all categories
Select * FROM Categories

-- get all products for a category
Select * FROM Products where category_id=1

-- get takeme details by locale
Select * FROM take_me_details where locale=AR