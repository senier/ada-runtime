pragma Warnings (Off);
pragma Syle_Checks (Off);

with Ada.IO_Exceptions;

package body System.File_IO is

   -----------
   -- Close --
   -----------

   procedure Close (File_Ptr : access FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Close unimplemented");
      raise Program_Error with "Unimplemented procedure Close";
   end Close;

   ------------
   -- Delete --
   ------------

   procedure Delete (File_Ptr : access FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Delete unimplemented");
      raise Program_Error with "Unimplemented procedure Delete";
   end Delete;

   -----------
   -- Flush --
   -----------

   procedure Flush (File : FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Flush unimplemented");
      raise Program_Error with "Unimplemented procedure Flush";
   end Flush;

   ---------------------
   -- Make_Unbuffered --
   ---------------------

   procedure Make_Unbuffered (File : FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True,
                                   "Make_Unbuffered unimplemented");
      raise Program_Error with "Unimplemented procedure Make_Unbuffered";
   end Make_Unbuffered;

   -------------
   -- Is_Open --
   -------------

   function Is_Open (File : FCB.AFCB_Ptr) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Open unimplemented");
      return raise Program_Error with "Unimplemented function Is_Open";
   end Is_Open;

   ----------
   -- Form --
   ----------

   function Form (File : FCB.AFCB_Ptr) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Form unimplemented");
      return raise Program_Error with "Unimplemented function Form";
   end Form;

   ----------
   -- Mode --
   ----------

   function Mode (File : FCB.AFCB_Ptr) return FCB.File_Mode is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Mode unimplemented");
      return raise Program_Error with "Unimplemented function Mode";
   end Mode;

   ----------
   -- Name --
   ----------

   function Name (File : FCB.AFCB_Ptr) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Name unimplemented");
      return raise Program_Error with "Unimplemented function Name";
   end Name;

   ---------------------
   -- Check_File_Open --
   ---------------------

   procedure Check_File_Open (File : FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True,
                                   "Check_File_Open unimplemented");
      raise Program_Error with "Unimplemented procedure Check_File_Open";
   end Check_File_Open;

   -----------------------
   -- Check_Read_Status --
   -----------------------

   procedure Check_Read_Status (File : FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True,
                                   "Check_Read_Status unimplemented");
      raise Program_Error with "Unimplemented procedure Check_Read_Status";
   end Check_Read_Status;

   ------------------------
   -- Check_Write_Status --
   ------------------------

   procedure Check_Write_Status (File : FCB.AFCB_Ptr)
   is
      use FCB;
      use Ada.IO_Exceptions;
   begin
      if File = null then
         raise Status_Error with "file not open";
      elsif File.Mode = In_File then
         raise Mode_Error with "file not writable";
      end if;
   end Check_Write_Status;

   ----------
   -- Open --
   ----------

   procedure Open
     (File_Ptr  : in out FCB.AFCB_Ptr;
      Dummy_FCB : FCB.AFCB'Class;
      Mode      : FCB.File_Mode;
      Name      : String;
      Form      : String;
      Amethod   : Character;
      Creat     : Boolean;
      Text      : Boolean;
      C_Stream  : ICS.FILEs := ICS.NULL_Stream)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Open unimplemented");
      raise Program_Error with "Unimplemented procedure Open";
   end Open;

   ---------------
   -- Write_Buf --
   ---------------

   procedure Write_Buf
     (File : FCB.AFCB_Ptr;
      Buf  : Address;
      Siz  : Interfaces.C_Streams.size_t)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Write_Buf unimplemented");
      raise Program_Error with "Unimplemented procedure Write_Buf";
   end Write_Buf;

   -----------
   -- Reset --
   -----------

   procedure Reset (File_Ptr : access FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Reset unimplemented");
      raise Program_Error with "Unimplemented procedure Reset";
   end Reset;

   -----------
   -- Reset --
   -----------

   procedure Reset (File_Ptr : access FCB.AFCB_Ptr; Mode : FCB.File_Mode) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Reset unimplemented");
      raise Program_Error with "Unimplemented procedure Reset";
   end Reset;

   --------------------
   -- Form_Parameter --
   --------------------

   procedure Form_Parameter
     (Form    : String;
      Keyword : String;
      Start   : out Natural;
      Stop    : out Natural)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True,
                                   "Form_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Form_Parameter";
   end Form_Parameter;

   ----------------
   -- Chain_File --
   ----------------

   procedure Chain_File (File : FCB.AFCB_Ptr) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Chain_File unimplemented");
      raise Program_Error with "Unimplemented procedure Chain_File";
   end Chain_File;

end System.File_IO;
