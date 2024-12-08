```ada
procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   My_Var: My_Sub_Type := 1;
begin
   My_Var := My_Var + 10; -- This will raise Constraint_Error
   Put_Line("My_Var: " & My_Var'Image);
end Example;
```