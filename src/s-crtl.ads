pragma Compiler_Unit_Warning;

package System.CRTL is

   pragma Preelaborate;

   subtype int is Integer;

   type size_t is mod 2 ** Standard'Address_Size;

   type Filename_Encoding is (UTF8, ASCII_8bits, Unspecified);
   for Filename_Encoding use (UTF8 => 0, ASCII_8bits => 1, Unspecified => 2);

end System.CRTL;
