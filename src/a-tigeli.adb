--  Dummy implementation

separate (Ada.Text_IO)
procedure Get_Line
  (File : File_Type;
   Item : out String;
   Last : out Natural)
is
   pragma Unreferenced (File);
begin
   Item := "";
   Last := 0;
end Get_Line;
