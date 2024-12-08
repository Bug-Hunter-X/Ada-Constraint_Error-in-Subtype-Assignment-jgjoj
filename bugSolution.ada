```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   My_Var: My_Sub_Type := 1;
begin
   begin
      My_Var := My_Var + 10;
   exception
      when Constraint_Error =>
         Put_Line("Constraint_Error: Value out of range for My_Sub_Type");
         My_Var := My_Sub_Type'Last; -- Or handle it appropriately
   end;
   Put_Line("My_Var: " & My_Var'Image);
end Example;
```