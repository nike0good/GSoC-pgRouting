/*PGR-GNU*****************************************************************
File: _mrt.sql

Generated with Template by:
Copyright (c) 2015 pgRouting developers
Mail: project@pgrouting.org

Function's developer:
Copyright (c) 2020 Prakash Tiwari
Mail: 85prakash2017@gmail.com

------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

 ********************************************************************PGR-GNU*/
---------------
-- _pgr_mrt
---------------

CREATE OR REPLACE FUNCTION _pgr_mrt(
    edges_sql1 TEXT, -- edges_sql1 (required)
    edges_sql2 TEXT, -- edges_sql2 (required)
    directed BOOLEAN DEFAULT true,

    OUT seq integer,
    OUT tree_edges BIGINT[] --contains list of edegs of spanning tree
   )

RETURNS SETOF RECORD AS
'MODULE_PATHNAME'
LANGUAGE c VOLATILE STRICT;

-- COMMENTS


COMMENT ON FUNCTION _pgr_mrt(TEXT,TEXT,BOOLEAN)
IS 'pgRouting internal function';
