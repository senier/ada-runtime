with System;

package Interfaces.C_Streams is

   pragma Preelaborate;

   subtype int is Integer;
   subtype FILEs is Natural;
   type size_t is mod 2 ** Standard'Address_Size;
   subtype voids is System.Address;

   NULL_Stream : constant FILEs := 0;
   EOF : constant int := 0;

   type Content_Encoding is (None, Default_Text, Text, U8text, Wtext, U16text);

   function ferror (stream : FILEs) return int;

   function fgetc (stream : FILEs) return int;

   function stdin  return FILEs;
   function stdout return FILEs;
   function stderr return FILEs;

   function is_regular_file (handle : int) return int is (0);

   function ungetc (c : int; stream : FILEs) return int;

   function fputc (C : int; stream : FILEs) return int;

   function fread
     (buffer : voids;
      size   : size_t;
      count  : size_t;
      stream : FILEs) return size_t;

   function fread
     (buffer : voids;
      index  : size_t;
      size   : size_t;
      count  : size_t;
      stream : FILEs) return size_t;

   function fflush (stream : FILEs) return int;

   function fwrite
     (buffer : voids;
      size   : size_t;
      count  : size_t;
      stream : FILEs) return size_t;

   function fileno (stream : FILEs) return int;

   procedure set_binary_mode (handle : int);
   procedure set_text_mode   (handle : int);

end Interfaces.C_Streams;
