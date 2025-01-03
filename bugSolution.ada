```ada
function Calculate_Area(Length : in Float; Width : in Float) return Float is
begin
  if Length <= 0.0 or Width <= 0.0 then
    return 0.0; -- Or raise an exception with more specific information
  else
    return Length * Width;
  end if;
end Calculate_Area;

procedure Main is
   Area : Float;
begin
   Area := Calculate_Area(10.0, 5.0);
   Ada.Text_IO.Put_Line("Area:" & Float'Image(Area));
   Area := Calculate_Area(0.0, 5.0); --Testing the improved exception handling
   Ada.Text_IO.Put_Line("Area:" & Float'Image(Area));
exception
   when others =>
      Ada.Text_IO.Put_Line("An unexpected error occurred.");
end Main;
```