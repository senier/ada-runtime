with Interfaces.C_Streams;
with System.File_Control_Block;

package System.File_IO is

   package FCB renames System.File_Control_Block;
   package ICS renames Interfaces.C_Streams;

   procedure Close (File_Ptr : access FCB.AFCB_Ptr);
   procedure Delete (File_Ptr : access FCB.AFCB_Ptr);
   procedure Flush (File : FCB.AFCB_Ptr);
   procedure Make_Unbuffered (File : FCB.AFCB_Ptr);

   function Is_Open (File : FCB.AFCB_Ptr) return Boolean;
   function Form (File : FCB.AFCB_Ptr) return String;
   function Mode (File : FCB.AFCB_Ptr) return FCB.File_Mode;
   function Name (File : FCB.AFCB_Ptr) return String;
   procedure Check_File_Open (File : FCB.AFCB_Ptr);
   procedure Check_Read_Status (File : FCB.AFCB_Ptr);
   procedure Check_Write_Status (File : FCB.AFCB_Ptr);

   procedure Open
     (File_Ptr  : in out FCB.AFCB_Ptr;
      Dummy_FCB : FCB.AFCB'Class;
      Mode      : FCB.File_Mode;
      Name      : String;
      Form      : String;
      Amethod   : Character;
      Creat     : Boolean;
      Text      : Boolean;
      C_Stream  : ICS.FILEs := ICS.NULL_Stream);

   procedure Write_Buf
     (File : FCB.AFCB_Ptr;
      Buf  : Address;
      Siz  : Interfaces.C_Streams.size_t);

   procedure Reset (File_Ptr : access FCB.AFCB_Ptr);
   procedure Reset (File_Ptr : access FCB.AFCB_Ptr; Mode : FCB.File_Mode);

   procedure Form_Parameter
     (Form    : String;
      Keyword : String;
      Start   : out Natural;
      Stop    : out Natural);

   procedure Chain_File (File : FCB.AFCB_Ptr);

end System.File_IO;
