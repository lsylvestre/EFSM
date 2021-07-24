library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package misc_list_length is
  type UNIT is (UNIT_VALUE);
  subtype caml_value is std_logic_vector(31 downto 0);
  subtype caml_ptr is std_logic_vector(31 downto 0);
  subtype caml_int is signed(30 downto 0);
  
end;
package body misc_list_length is
end;

