\i setup.sql

--SELECT plan(188);
SELECT plan(8);


SELECT has_function('pgr_bar',
    ARRAY['text', 'bigint', 'bigint', 'boolean']);
SELECT has_function('pgr_bar',
    ARRAY['text', 'bigint', 'anyarray', 'boolean']);
SELECT has_function('pgr_bar',
    ARRAY['text', 'anyarray', 'bigint', 'boolean']);
SELECT has_function('pgr_bar',
    ARRAY['text', 'anyarray', 'anyarray', 'boolean']);

SELECT function_returns('pgr_bar',
    ARRAY['text', 'bigint', 'bigint', 'boolean'],
    'setof record');
SELECT function_returns('pgr_bar',
    ARRAY['text', 'bigint', 'anyarray', 'boolean'],
    'setof record');
SELECT function_returns('pgr_bar',
    ARRAY['text', 'anyarray', 'bigint', 'boolean'],
    'setof record');
SELECT function_returns('pgr_bar',
    ARRAY['text', 'anyarray', 'anyarray', 'boolean'],
    'setof record');


-- ONE TO ONE
SELECT style_bar('pgr_bar', ', 2, 3, true)');
-- ONE TO MANY
SELECT style_bar('pgr_bar', ', 2, ARRAY[3], true)');
-- MANY TO ONE
SELECT style_bar('pgr_bar', ', ARRAY[2], 3, true)');
-- MANY TO MANY
SELECT style_dijkstra('pgr_bar', ', ARRAY[2], ARRAY[3], true)');

SELECT finish();
ROLLBACK;
