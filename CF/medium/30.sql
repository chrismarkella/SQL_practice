-- You have your very own library at home, and it's getting bigger and
-- bigger with each passing month. You've decided to create a database in
-- which to store information about your books, in the hope that it will
-- help you remember which books you have in your library.

-- Information about the books in your library is stored in the table
-- catalogs, which contains the following columns:

--     doc_id - the unique ID of the catalog;
--     xml_doc - the catalog as an XML file in the following format:

-- <catalog>
--   <book id="...">
--     <author>...</author>
--     <title>...</title>
--   </book>
--   <book id="...">
--     <author>...</author>
--     <title>...</title>
--   </book>
--   ...
-- </catalog>.

-- Each catalog represents the work of one distinct <author> in your
-- library. There is exactly one <catalog> element in each xml_doc, and the
-- id for each book is unique.



-- Given the catalogs table, you want to find out which authors you have
-- represented in your library. Your task is to create a new table with the
-- author column that will contain all the distinct authors, sorted by
-- their names.

SELECT Extractvalue(xml_doc, 'catalog/book[1]/author') AS author 
FROM catalogs
ORDER BY author;
